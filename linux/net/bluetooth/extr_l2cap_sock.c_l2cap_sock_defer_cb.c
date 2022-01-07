
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*) ;} ;
struct l2cap_chan {struct sock* data; } ;
struct TYPE_2__ {struct sock* parent; } ;


 TYPE_1__* bt_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void l2cap_sock_defer_cb(struct l2cap_chan *chan)
{
 struct sock *parent, *sk = chan->data;

 lock_sock(sk);

 parent = bt_sk(sk)->parent;
 if (parent)
  parent->sk_data_ready(parent);

 release_sock(sk);
}
