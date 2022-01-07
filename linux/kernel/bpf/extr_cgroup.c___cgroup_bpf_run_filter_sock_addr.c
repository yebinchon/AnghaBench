
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unspec ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_family; int sk_cgrp_data; } ;
struct TYPE_2__ {int * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
struct bpf_sock_addr_kern {void* t_ctx; struct sockaddr* uaddr; struct sock* sk; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int BPF_PROG_RUN ;
 int BPF_PROG_RUN_ARRAY (int ,struct bpf_sock_addr_kern*,int ) ;
 int EPERM ;
 int memset (struct sockaddr_storage*,int ,int) ;
 struct cgroup* sock_cgroup_ptr (int *) ;

int __cgroup_bpf_run_filter_sock_addr(struct sock *sk,
          struct sockaddr *uaddr,
          enum bpf_attach_type type,
          void *t_ctx)
{
 struct bpf_sock_addr_kern ctx = {
  .sk = sk,
  .uaddr = uaddr,
  .t_ctx = t_ctx,
 };
 struct sockaddr_storage unspec;
 struct cgroup *cgrp;
 int ret;




 if (sk->sk_family != AF_INET && sk->sk_family != AF_INET6)
  return 0;

 if (!ctx.uaddr) {
  memset(&unspec, 0, sizeof(unspec));
  ctx.uaddr = (struct sockaddr *)&unspec;
 }

 cgrp = sock_cgroup_ptr(&sk->sk_cgrp_data);
 ret = BPF_PROG_RUN_ARRAY(cgrp->bpf.effective[type], &ctx, BPF_PROG_RUN);

 return ret == 1 ? 0 : -EPERM;
}
