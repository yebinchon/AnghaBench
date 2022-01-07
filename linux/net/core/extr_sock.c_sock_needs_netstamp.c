
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_family; } ;





__attribute__((used)) static bool sock_needs_netstamp(const struct sock *sk)
{
 switch (sk->sk_family) {
 case 128:
 case 129:
  return 0;
 default:
  return 1;
 }
}
