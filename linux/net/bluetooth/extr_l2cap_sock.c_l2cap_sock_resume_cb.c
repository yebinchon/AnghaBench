
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;void* sk_state; } ;
struct l2cap_chan {void* state; int flags; struct sock* data; } ;
struct TYPE_2__ {int flags; } ;


 void* BT_CONNECTED ;
 int BT_SK_SUSPEND ;
 int FLAG_PENDING_SECURITY ;
 TYPE_1__* bt_sk (struct sock*) ;
 int clear_bit (int ,int *) ;
 int stub1 (struct sock*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void l2cap_sock_resume_cb(struct l2cap_chan *chan)
{
 struct sock *sk = chan->data;

 if (test_and_clear_bit(FLAG_PENDING_SECURITY, &chan->flags)) {
  sk->sk_state = BT_CONNECTED;
  chan->state = BT_CONNECTED;
 }

 clear_bit(BT_SK_SUSPEND, &bt_sk(sk)->flags);
 sk->sk_state_change(sk);
}
