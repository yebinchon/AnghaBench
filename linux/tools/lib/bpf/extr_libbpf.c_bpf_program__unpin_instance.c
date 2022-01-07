
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bpf_program {TYPE_1__ instances; int section_name; } ;


 int EINVAL ;
 int check_path (char const*) ;
 int errno ;
 int pr_debug (char*,char const*) ;
 int pr_warning (char*,...) ;
 int unlink (char const*) ;

int bpf_program__unpin_instance(struct bpf_program *prog, const char *path,
    int instance)
{
 int err;

 err = check_path(path);
 if (err)
  return err;

 if (prog == ((void*)0)) {
  pr_warning("invalid program pointer\n");
  return -EINVAL;
 }

 if (instance < 0 || instance >= prog->instances.nr) {
  pr_warning("invalid prog instance %d of prog %s (max %d)\n",
      instance, prog->section_name, prog->instances.nr);
  return -EINVAL;
 }

 err = unlink(path);
 if (err != 0)
  return -errno;
 pr_debug("unpinned program '%s'\n", path);

 return 0;
}
