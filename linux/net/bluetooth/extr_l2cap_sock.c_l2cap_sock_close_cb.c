
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct l2cap_chan {struct sock* data; } ;


 int l2cap_sock_kill (struct sock*) ;

__attribute__((used)) static void l2cap_sock_close_cb(struct l2cap_chan *chan)
{
 struct sock *sk = chan->data;

 l2cap_sock_kill(sk);
}
