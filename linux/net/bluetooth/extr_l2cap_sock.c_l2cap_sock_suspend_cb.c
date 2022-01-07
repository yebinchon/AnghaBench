
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;} ;
struct l2cap_chan {struct sock* data; } ;
struct TYPE_2__ {int flags; } ;


 int BT_SK_SUSPEND ;
 TYPE_1__* bt_sk (struct sock*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void l2cap_sock_suspend_cb(struct l2cap_chan *chan)
{
 struct sock *sk = chan->data;

 set_bit(BT_SK_SUSPEND, &bt_sk(sk)->flags);
 sk->sk_state_change(sk);
}
