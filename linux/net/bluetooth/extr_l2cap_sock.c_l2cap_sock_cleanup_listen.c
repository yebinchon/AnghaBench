
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int state; int sk_state; } ;
struct l2cap_chan {int state; int sk_state; } ;
struct TYPE_2__ {struct sock* chan; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int ECONNRESET ;
 int __clear_chan_timer (struct sock*) ;
 struct sock* bt_accept_dequeue (struct sock*,int *) ;
 int l2cap_chan_close (struct sock*,int ) ;
 int l2cap_chan_lock (struct sock*) ;
 int l2cap_chan_unlock (struct sock*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sock_kill (struct sock*) ;
 int state_to_string (int ) ;

__attribute__((used)) static void l2cap_sock_cleanup_listen(struct sock *parent)
{
 struct sock *sk;

 BT_DBG("parent %p state %s", parent,
        state_to_string(parent->sk_state));


 while ((sk = bt_accept_dequeue(parent, ((void*)0)))) {
  struct l2cap_chan *chan = l2cap_pi(sk)->chan;

  BT_DBG("child chan %p state %s", chan,
         state_to_string(chan->state));

  l2cap_chan_lock(chan);
  __clear_chan_timer(chan);
  l2cap_chan_close(chan, ECONNRESET);
  l2cap_chan_unlock(chan);

  l2cap_sock_kill(sk);
 }
}
