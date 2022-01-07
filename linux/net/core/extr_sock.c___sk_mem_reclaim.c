
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_forward_alloc; } ;


 int SK_MEM_QUANTUM_SHIFT ;
 int __sk_mem_reduce_allocated (struct sock*,int) ;

void __sk_mem_reclaim(struct sock *sk, int amount)
{
 amount >>= SK_MEM_QUANTUM_SHIFT;
 sk->sk_forward_alloc -= amount << SK_MEM_QUANTUM_SHIFT;
 __sk_mem_reduce_allocated(sk, amount);
}
