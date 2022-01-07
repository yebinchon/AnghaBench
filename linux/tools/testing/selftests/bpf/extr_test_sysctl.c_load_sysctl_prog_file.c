
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_test {scalar_t__ result; int prog_file; } ;
struct bpf_prog_load_attr {int prog_type; int file; } ;
struct bpf_object {int dummy; } ;


 int BPF_PROG_TYPE_CGROUP_SYSCTL ;
 scalar_t__ LOAD_REJECT ;
 scalar_t__ bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int log_err (char*,int ) ;
 int memset (struct bpf_prog_load_attr*,int ,int) ;

__attribute__((used)) static int load_sysctl_prog_file(struct sysctl_test *test)
{
 struct bpf_prog_load_attr attr;
 struct bpf_object *obj;
 int prog_fd;

 memset(&attr, 0, sizeof(struct bpf_prog_load_attr));
 attr.file = test->prog_file;
 attr.prog_type = BPF_PROG_TYPE_CGROUP_SYSCTL;

 if (bpf_prog_load_xattr(&attr, &obj, &prog_fd)) {
  if (test->result != LOAD_REJECT)
   log_err(">>> Loading program (%s) error.\n",
    test->prog_file);
  return -1;
 }

 return prog_fd;
}
