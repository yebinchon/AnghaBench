
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int rejected; int sent_request; int ignore_connecting_rst; int connect_timeout; int owner; int trusted; int pending_work; int connect_work; scalar_t__ peer_shutdown; int accept_queue; int pending_links; int * listener; int connected_table; int bound_table; int remote_addr; int local_addr; } ;
struct socket {int dummy; } ;
struct sock {unsigned short sk_type; int sk_backlog_rcv; int sk_destruct; } ;
struct net {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ (* init ) (struct vsock_sock*,struct vsock_sock*) ;} ;


 int AF_VSOCK ;
 int CAP_NET_ADMIN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int SOCK_DONE ;
 int VMADDR_CID_ANY ;
 int VMADDR_PORT_ANY ;
 int VSOCK_DEFAULT_CONNECT_TIMEOUT ;
 int capable (int ) ;
 int get_cred (int ) ;
 int get_current_cred () ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sk_free (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ stub1 (struct vsock_sock*,struct vsock_sock*) ;
 TYPE_1__* transport ;
 int vsock_addr_init (int *,int ,int ) ;
 int vsock_connect_timeout ;
 int vsock_insert_unbound (struct vsock_sock*) ;
 int vsock_pending_work ;
 int vsock_proto ;
 int vsock_queue_rcv_skb ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int vsock_sk_destruct ;

struct sock *__vsock_create(struct net *net,
       struct socket *sock,
       struct sock *parent,
       gfp_t priority,
       unsigned short type,
       int kern)
{
 struct sock *sk;
 struct vsock_sock *psk;
 struct vsock_sock *vsk;

 sk = sk_alloc(net, AF_VSOCK, priority, &vsock_proto, kern);
 if (!sk)
  return ((void*)0);

 sock_init_data(sock, sk);





 if (!sock)
  sk->sk_type = type;

 vsk = vsock_sk(sk);
 vsock_addr_init(&vsk->local_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);
 vsock_addr_init(&vsk->remote_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);

 sk->sk_destruct = vsock_sk_destruct;
 sk->sk_backlog_rcv = vsock_queue_rcv_skb;
 sock_reset_flag(sk, SOCK_DONE);

 INIT_LIST_HEAD(&vsk->bound_table);
 INIT_LIST_HEAD(&vsk->connected_table);
 vsk->listener = ((void*)0);
 INIT_LIST_HEAD(&vsk->pending_links);
 INIT_LIST_HEAD(&vsk->accept_queue);
 vsk->rejected = 0;
 vsk->sent_request = 0;
 vsk->ignore_connecting_rst = 0;
 vsk->peer_shutdown = 0;
 INIT_DELAYED_WORK(&vsk->connect_work, vsock_connect_timeout);
 INIT_DELAYED_WORK(&vsk->pending_work, vsock_pending_work);

 psk = parent ? vsock_sk(parent) : ((void*)0);
 if (parent) {
  vsk->trusted = psk->trusted;
  vsk->owner = get_cred(psk->owner);
  vsk->connect_timeout = psk->connect_timeout;
 } else {
  vsk->trusted = capable(CAP_NET_ADMIN);
  vsk->owner = get_current_cred();
  vsk->connect_timeout = VSOCK_DEFAULT_CONNECT_TIMEOUT;
 }

 if (transport->init(vsk, psk) < 0) {
  sk_free(sk);
  return ((void*)0);
 }

 if (sock)
  vsock_insert_unbound(vsk);

 return sk;
}
