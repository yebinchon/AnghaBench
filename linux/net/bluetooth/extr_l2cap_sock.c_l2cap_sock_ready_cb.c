
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*) ;int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct l2cap_chan {struct sock* data; } ;
struct TYPE_2__ {struct sock* parent; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,struct sock*,struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static void l2cap_sock_ready_cb(struct l2cap_chan *chan)
{
 struct sock *sk = chan->data;
 struct sock *parent;

 lock_sock(sk);

 parent = bt_sk(sk)->parent;

 BT_DBG("sk %p, parent %p", sk, parent);

 sk->sk_state = BT_CONNECTED;
 sk->sk_state_change(sk);

 if (parent)
  parent->sk_data_ready(parent);

 release_sock(sk);
}
