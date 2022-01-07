
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* enter_memory_pressure ) (struct sock*) ;} ;


 int stub1 (struct sock*) ;

__attribute__((used)) static void sk_enter_memory_pressure(struct sock *sk)
{
 if (!sk->sk_prot->enter_memory_pressure)
  return;

 sk->sk_prot->enter_memory_pressure(sk);
}
