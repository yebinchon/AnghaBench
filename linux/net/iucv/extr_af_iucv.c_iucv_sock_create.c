
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int type; int * ops; int state; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_IUCV ;


 int SS_UNCONNECTED ;
 struct sock* iucv_sock_alloc (struct socket*,int,int ,int) ;
 int iucv_sock_init (struct sock*,int *) ;
 int iucv_sock_ops ;

__attribute__((used)) static int iucv_sock_create(struct net *net, struct socket *sock, int protocol,
       int kern)
{
 struct sock *sk;

 if (protocol && protocol != PF_IUCV)
  return -EPROTONOSUPPORT;

 sock->state = SS_UNCONNECTED;

 switch (sock->type) {
 case 128:
  sock->ops = &iucv_sock_ops;
  break;
 case 129:

  sock->ops = &iucv_sock_ops;
  break;
 default:
  return -ESOCKTNOSUPPORT;
 }

 sk = iucv_sock_alloc(sock, protocol, GFP_KERNEL, kern);
 if (!sk)
  return -ENOMEM;

 iucv_sock_init(sk, ((void*)0));

 return 0;
}
