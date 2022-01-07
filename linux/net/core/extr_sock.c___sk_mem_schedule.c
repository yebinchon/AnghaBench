
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_forward_alloc; } ;


 int SK_MEM_QUANTUM_SHIFT ;
 int __sk_mem_raise_allocated (struct sock*,int,int,int) ;
 int sk_mem_pages (int) ;

int __sk_mem_schedule(struct sock *sk, int size, int kind)
{
 int ret, amt = sk_mem_pages(size);

 sk->sk_forward_alloc += amt << SK_MEM_QUANTUM_SHIFT;
 ret = __sk_mem_raise_allocated(sk, size, amt, kind);
 if (!ret)
  sk->sk_forward_alloc -= amt << SK_MEM_QUANTUM_SHIFT;
 return ret;
}
