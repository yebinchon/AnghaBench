
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_ack_backlog; } ;
struct l2cap_chan {struct sock* data; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;


 int BTPROTO_L2CAP ;
 int BT_DBG (char*,int ) ;
 int GFP_ATOMIC ;
 int bt_accept_enqueue (struct sock*,struct sock*,int) ;
 int bt_sock_reclassify_lock (struct sock*,int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 struct sock* l2cap_sock_alloc (int ,int *,int ,int ,int ) ;
 int l2cap_sock_init (struct sock*,struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct l2cap_chan *l2cap_sock_new_connection_cb(struct l2cap_chan *chan)
{
 struct sock *sk, *parent = chan->data;

 lock_sock(parent);


 if (sk_acceptq_is_full(parent)) {
  BT_DBG("backlog full %d", parent->sk_ack_backlog);
  release_sock(parent);
  return ((void*)0);
 }

 sk = l2cap_sock_alloc(sock_net(parent), ((void*)0), BTPROTO_L2CAP,
         GFP_ATOMIC, 0);
 if (!sk) {
  release_sock(parent);
  return ((void*)0);
        }

 bt_sock_reclassify_lock(sk, BTPROTO_L2CAP);

 l2cap_sock_init(sk, parent);

 bt_accept_enqueue(parent, sk, 0);

 release_sock(parent);

 return l2cap_pi(sk)->chan;
}
