
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_memcg; } ;


 scalar_t__ mem_cgroup_sockets_enabled ;
 int mem_cgroup_uncharge_skmem (scalar_t__,int) ;
 int sk_leave_memory_pressure (struct sock*) ;
 scalar_t__ sk_memory_allocated (struct sock*) ;
 int sk_memory_allocated_sub (struct sock*,int) ;
 scalar_t__ sk_prot_mem_limits (struct sock*,int ) ;
 scalar_t__ sk_under_memory_pressure (struct sock*) ;

void __sk_mem_reduce_allocated(struct sock *sk, int amount)
{
 sk_memory_allocated_sub(sk, amount);

 if (mem_cgroup_sockets_enabled && sk->sk_memcg)
  mem_cgroup_uncharge_skmem(sk->sk_memcg, amount);

 if (sk_under_memory_pressure(sk) &&
     (sk_memory_allocated(sk) < sk_prot_mem_limits(sk, 0)))
  sk_leave_memory_pressure(sk);
}
