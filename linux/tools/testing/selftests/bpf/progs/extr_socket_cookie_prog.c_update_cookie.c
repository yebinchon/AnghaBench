
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_cookie {scalar_t__ cookie_key; int cookie_value; } ;
struct bpf_sock_ops {scalar_t__ family; scalar_t__ op; int local_port; int sk; } ;
struct bpf_sock {int dummy; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ BPF_SOCK_OPS_TCP_CONNECT_CB ;
 scalar_t__ bpf_get_socket_cookie (struct bpf_sock_ops*) ;
 struct socket_cookie* bpf_sk_storage_get (int *,int ,int ,int ) ;
 int socket_cookies ;

int update_cookie(struct bpf_sock_ops *ctx)
{
 struct bpf_sock *sk;
 struct socket_cookie *p;

 if (ctx->family != AF_INET6)
  return 1;

 if (ctx->op != BPF_SOCK_OPS_TCP_CONNECT_CB)
  return 1;

 if (!ctx->sk)
  return 1;

 p = bpf_sk_storage_get(&socket_cookies, ctx->sk, 0, 0);
 if (!p)
  return 1;

 if (p->cookie_key != bpf_get_socket_cookie(ctx))
  return 1;

 p->cookie_value = (ctx->local_port << 8) | p->cookie_value;

 return 1;
}
