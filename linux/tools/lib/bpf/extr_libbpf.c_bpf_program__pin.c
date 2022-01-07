
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bpf_program {TYPE_1__ instances; int section_name; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int PATH_MAX ;
 int bpf_program__pin_instance (struct bpf_program*,char const*,int) ;
 int bpf_program__unpin_instance (struct bpf_program*,char*,int) ;
 int check_path (char const*) ;
 int make_dir (char const*) ;
 int pr_warning (char*,...) ;
 int rmdir (char const*) ;
 int snprintf (char*,int,char*,char const*,int) ;

int bpf_program__pin(struct bpf_program *prog, const char *path)
{
 int i, err;

 err = check_path(path);
 if (err)
  return err;

 if (prog == ((void*)0)) {
  pr_warning("invalid program pointer\n");
  return -EINVAL;
 }

 if (prog->instances.nr <= 0) {
  pr_warning("no instances of prog %s to pin\n",
      prog->section_name);
  return -EINVAL;
 }

 if (prog->instances.nr == 1) {

  return bpf_program__pin_instance(prog, path, 0);
 }

 err = make_dir(path);
 if (err)
  return err;

 for (i = 0; i < prog->instances.nr; i++) {
  char buf[PATH_MAX];
  int len;

  len = snprintf(buf, PATH_MAX, "%s/%d", path, i);
  if (len < 0) {
   err = -EINVAL;
   goto err_unpin;
  } else if (len >= PATH_MAX) {
   err = -ENAMETOOLONG;
   goto err_unpin;
  }

  err = bpf_program__pin_instance(prog, buf, i);
  if (err)
   goto err_unpin;
 }

 return 0;

err_unpin:
 for (i = i - 1; i >= 0; i--) {
  char buf[PATH_MAX];
  int len;

  len = snprintf(buf, PATH_MAX, "%s/%d", path, i);
  if (len < 0)
   continue;
  else if (len >= PATH_MAX)
   continue;

  bpf_program__unpin_instance(prog, buf, i);
 }

 rmdir(path);

 return err;
}
