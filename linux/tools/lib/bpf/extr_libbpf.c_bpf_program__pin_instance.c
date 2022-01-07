
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; int * fds; } ;
struct bpf_program {TYPE_1__ instances; int section_name; } ;
typedef int errmsg ;


 int EINVAL ;
 int STRERR_BUFSIZE ;
 scalar_t__ bpf_obj_pin (int ,char const*) ;
 int check_path (char const*) ;
 int errno ;
 char* libbpf_strerror_r (int,char*,int) ;
 int pr_debug (char*,char const*) ;
 int pr_warning (char*,...) ;

int bpf_program__pin_instance(struct bpf_program *prog, const char *path,
         int instance)
{
 char *cp, errmsg[STRERR_BUFSIZE];
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

 if (bpf_obj_pin(prog->instances.fds[instance], path)) {
  cp = libbpf_strerror_r(errno, errmsg, sizeof(errmsg));
  pr_warning("failed to pin program: %s\n", cp);
  return -errno;
 }
 pr_debug("pinned program '%s'\n", path);

 return 0;
}
