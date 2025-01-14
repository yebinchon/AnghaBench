
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog_kern {struct sock_filter* filter; scalar_t__ len; } ;
struct sock_filter {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef scalar_t__ __u16 ;


 int EINVAL ;
 scalar_t__ XT_BPF_MAX_NUM_INSTR ;
 scalar_t__ bpf_prog_create (struct bpf_prog**,struct sock_fprog_kern*) ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int __bpf_mt_check_bytecode(struct sock_filter *insns, __u16 len,
       struct bpf_prog **ret)
{
 struct sock_fprog_kern program;

 if (len > XT_BPF_MAX_NUM_INSTR)
  return -EINVAL;

 program.len = len;
 program.filter = insns;

 if (bpf_prog_create(ret, &program)) {
  pr_info_ratelimited("check failed: parse error\n");
  return -EINVAL;
 }

 return 0;
}
