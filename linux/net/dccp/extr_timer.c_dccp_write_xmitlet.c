
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int dccps_xmit_timer; } ;


 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int dccp_write_xmit (struct sock*) ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void dccp_write_xmitlet(unsigned long data)
{
 struct sock *sk = (struct sock *)data;

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk))
  sk_reset_timer(sk, &dccp_sk(sk)->dccps_xmit_timer, jiffies + 1);
 else
  dccp_write_xmit(sk);
 bh_unlock_sock(sk);
 sock_put(sk);
}
