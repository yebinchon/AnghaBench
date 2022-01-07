
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int sk_family; } ;





 scalar_t__ tomoyo_kernel_service () ;

__attribute__((used)) static u8 tomoyo_sock_family(struct sock *sk)
{
 u8 family;

 if (tomoyo_kernel_service())
  return 0;
 family = sk->sk_family;
 switch (family) {
 case 130:
 case 129:
 case 128:
  return family;
 default:
  return 0;
 }
}
