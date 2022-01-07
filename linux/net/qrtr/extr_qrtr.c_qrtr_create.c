
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ type; int * ops; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ sq_port; int sq_node; int sq_family; } ;
struct qrtr_sock {TYPE_1__ us; } ;
struct net {int dummy; } ;


 int AF_QIPCRTR ;
 int ENOMEM ;
 int EPROTOTYPE ;
 int GFP_KERNEL ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_ZAPPED ;
 int qrtr_local_nid ;
 int qrtr_proto ;
 int qrtr_proto_ops ;
 struct qrtr_sock* qrtr_sk (struct sock*) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static int qrtr_create(struct net *net, struct socket *sock,
         int protocol, int kern)
{
 struct qrtr_sock *ipc;
 struct sock *sk;

 if (sock->type != SOCK_DGRAM)
  return -EPROTOTYPE;

 sk = sk_alloc(net, AF_QIPCRTR, GFP_KERNEL, &qrtr_proto, kern);
 if (!sk)
  return -ENOMEM;

 sock_set_flag(sk, SOCK_ZAPPED);

 sock_init_data(sock, sk);
 sock->ops = &qrtr_proto_ops;

 ipc = qrtr_sk(sk);
 ipc->us.sq_family = AF_QIPCRTR;
 ipc->us.sq_node = qrtr_local_nid;
 ipc->us.sq_port = 0;

 return 0;
}
