
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_cgrp_data; } ;
struct TYPE_2__ {int * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
struct bpf_sock_ops_kern {int dummy; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_PROG_RUN ;
 int BPF_PROG_RUN_ARRAY (int ,struct bpf_sock_ops_kern*,int ) ;
 int EPERM ;
 struct cgroup* sock_cgroup_ptr (int *) ;

int __cgroup_bpf_run_filter_sock_ops(struct sock *sk,
         struct bpf_sock_ops_kern *sock_ops,
         enum bpf_attach_type type)
{
 struct cgroup *cgrp = sock_cgroup_ptr(&sk->sk_cgrp_data);
 int ret;

 ret = BPF_PROG_RUN_ARRAY(cgrp->bpf.effective[type], sock_ops,
     BPF_PROG_RUN);
 return ret == 1 ? 0 : -EPERM;
}
