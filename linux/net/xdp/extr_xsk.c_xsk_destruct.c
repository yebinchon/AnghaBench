
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_sock {int umem; } ;
struct sock {int dummy; } ;


 int SOCK_DEAD ;
 int sk_refcnt_debug_dec (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int xdp_put_umem (int ) ;
 struct xdp_sock* xdp_sk (struct sock*) ;

__attribute__((used)) static void xsk_destruct(struct sock *sk)
{
 struct xdp_sock *xs = xdp_sk(sk);

 if (!sock_flag(sk, SOCK_DEAD))
  return;

 xdp_put_umem(xs->umem);

 sk_refcnt_debug_dec(sk);
}
