
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; scalar_t__ sk_socket; } ;
struct TYPE_2__ {int chan; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int SOCK_DEAD ;
 int SOCK_ZAPPED ;
 int l2cap_chan_put (int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int state_to_string (int ) ;

__attribute__((used)) static void l2cap_sock_kill(struct sock *sk)
{
 if (!sock_flag(sk, SOCK_ZAPPED) || sk->sk_socket)
  return;

 BT_DBG("sk %p state %s", sk, state_to_string(sk->sk_state));



 l2cap_chan_put(l2cap_pi(sk)->chan);
 sock_set_flag(sk, SOCK_DEAD);
 sock_put(sk);
}
