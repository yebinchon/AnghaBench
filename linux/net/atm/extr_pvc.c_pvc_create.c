
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 int PF_ATMPVC ;
 struct net init_net ;
 int pvc_proto_ops ;
 int vcc_create (struct net*,struct socket*,int,int ,int) ;

__attribute__((used)) static int pvc_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 if (net != &init_net)
  return -EAFNOSUPPORT;

 sock->ops = &pvc_proto_ops;
 return vcc_create(net, sock, protocol, PF_ATMPVC, kern);
}
