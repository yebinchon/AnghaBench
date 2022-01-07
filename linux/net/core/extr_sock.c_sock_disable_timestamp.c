
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {unsigned long sk_flags; } ;


 int SK_FLAGS_TIMESTAMP ;
 int net_disable_timestamp () ;
 scalar_t__ sock_needs_netstamp (struct sock*) ;

__attribute__((used)) static void sock_disable_timestamp(struct sock *sk, unsigned long flags)
{
 if (sk->sk_flags & flags) {
  sk->sk_flags &= ~flags;
  if (sock_needs_netstamp(sk) &&
      !(sk->sk_flags & SK_FLAGS_TIMESTAMP))
   net_disable_timestamp();
 }
}
