
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {unsigned long sk_flags; } ;


 unsigned long SK_FLAGS_TIMESTAMP ;
 int net_enable_timestamp () ;
 int sock_flag (struct sock*,int) ;
 scalar_t__ sock_needs_netstamp (struct sock*) ;
 int sock_set_flag (struct sock*,int) ;

void sock_enable_timestamp(struct sock *sk, int flag)
{
 if (!sock_flag(sk, flag)) {
  unsigned long previous_flags = sk->sk_flags;

  sock_set_flag(sk, flag);





  if (sock_needs_netstamp(sk) &&
      !(previous_flags & SK_FLAGS_TIMESTAMP))
   net_enable_timestamp();
 }
}
