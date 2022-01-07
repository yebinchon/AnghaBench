
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {unsigned long* memory_pressure; int (* leave_memory_pressure ) (struct sock*) ;} ;


 scalar_t__ READ_ONCE (unsigned long) ;
 int WRITE_ONCE (unsigned long,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void sk_leave_memory_pressure(struct sock *sk)
{
 if (sk->sk_prot->leave_memory_pressure) {
  sk->sk_prot->leave_memory_pressure(sk);
 } else {
  unsigned long *memory_pressure = sk->sk_prot->memory_pressure;

  if (memory_pressure && READ_ONCE(*memory_pressure))
   WRITE_ONCE(*memory_pressure, 0);
 }
}
