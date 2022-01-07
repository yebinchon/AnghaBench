
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; int sk_err; int (* sk_state_change ) (struct sock*) ;int (* sk_data_ready ) (struct sock*) ;} ;
struct l2cap_chan {int state; int nesting; struct sock* data; } ;
struct TYPE_2__ {struct sock* parent; } ;




 int BT_DBG (char*,struct l2cap_chan*,int ) ;


 int SOCK_ZAPPED ;
 int atomic_read (int *) ;
 int bt_accept_unlink (struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int l2cap_sock_cleanup_listen (struct sock*) ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int state_to_string (int) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static void l2cap_sock_teardown_cb(struct l2cap_chan *chan, int err)
{
 struct sock *sk = chan->data;
 struct sock *parent;

 BT_DBG("chan %p state %s", chan, state_to_string(chan->state));
 lock_sock_nested(sk, atomic_read(&chan->nesting));

 parent = bt_sk(sk)->parent;

 sock_set_flag(sk, SOCK_ZAPPED);

 switch (chan->state) {
 case 128:
 case 131:
 case 130:
  break;
 case 129:
  l2cap_sock_cleanup_listen(sk);
  sk->sk_state = 130;
  chan->state = 130;

  break;
 default:
  sk->sk_state = 130;
  chan->state = 130;

  sk->sk_err = err;

  if (parent) {
   bt_accept_unlink(sk);
   parent->sk_data_ready(parent);
  } else {
   sk->sk_state_change(sk);
  }

  break;
 }

 release_sock(sk);
}
