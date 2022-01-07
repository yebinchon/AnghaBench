
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_err; } ;
struct l2cap_chan {struct sock* data; } ;



__attribute__((used)) static void l2cap_sock_state_change_cb(struct l2cap_chan *chan, int state,
           int err)
{
 struct sock *sk = chan->data;

 sk->sk_state = state;

 if (err)
  sk->sk_err = err;
}
