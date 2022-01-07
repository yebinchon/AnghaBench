
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_PROG_TYPE_UNSPEC ;
 scalar_t__ ENOSYS ;
 int bpf_load_program (int ,int *,int ,int *,int ,int *,int ) ;
 scalar_t__ errno ;
 int print_bool_feature (char*,char*,char*,int,char const*) ;

__attribute__((used)) static bool probe_bpf_syscall(const char *define_prefix)
{
 bool res;

 bpf_load_program(BPF_PROG_TYPE_UNSPEC, ((void*)0), 0, ((void*)0), 0, ((void*)0), 0);
 res = (errno != ENOSYS);

 print_bool_feature("have_bpf_syscall",
      "bpf() syscall",
      "BPF_SYSCALL",
      res, define_prefix);

 return res;
}
