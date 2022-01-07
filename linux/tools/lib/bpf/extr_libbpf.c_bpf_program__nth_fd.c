
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; int* fds; } ;
struct bpf_program {int section_name; TYPE_1__ instances; } ;


 int EINVAL ;
 int ENOENT ;
 int pr_warning (char*,int,int ,...) ;

int bpf_program__nth_fd(const struct bpf_program *prog, int n)
{
 int fd;

 if (!prog)
  return -EINVAL;

 if (n >= prog->instances.nr || n < 0) {
  pr_warning("Can't get the %dth fd from program %s: only %d instances\n",
      n, prog->section_name, prog->instances.nr);
  return -EINVAL;
 }

 fd = prog->instances.fds[n];
 if (fd < 0) {
  pr_warning("%dth instance of program '%s' is invalid\n",
      n, prog->section_name);
  return -ENOENT;
 }

 return fd;
}
