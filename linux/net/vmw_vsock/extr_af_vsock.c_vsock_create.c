
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int type; int state; int * ops; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_VSOCK ;


 int SS_UNCONNECTED ;
 scalar_t__ __vsock_create (struct net*,struct socket*,int *,int ,int ,int) ;
 int vsock_dgram_ops ;
 int vsock_stream_ops ;

__attribute__((used)) static int vsock_create(struct net *net, struct socket *sock,
   int protocol, int kern)
{
 if (!sock)
  return -EINVAL;

 if (protocol && protocol != PF_VSOCK)
  return -EPROTONOSUPPORT;

 switch (sock->type) {
 case 129:
  sock->ops = &vsock_dgram_ops;
  break;
 case 128:
  sock->ops = &vsock_stream_ops;
  break;
 default:
  return -ESOCKTNOSUPPORT;
 }

 sock->state = SS_UNCONNECTED;

 return __vsock_create(net, sock, ((void*)0), GFP_KERNEL, 0, kern) ? 0 : -ENOMEM;
}
