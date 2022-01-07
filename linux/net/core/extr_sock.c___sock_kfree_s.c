
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_sub (int,int *) ;
 int kfree (void*) ;
 int kzfree (void*) ;

__attribute__((used)) static inline void __sock_kfree_s(struct sock *sk, void *mem, int size,
      const bool nullify)
{
 if (WARN_ON_ONCE(!mem))
  return;
 if (nullify)
  kzfree(mem);
 else
  kfree(mem);
 atomic_sub(size, &sk->sk_omem_alloc);
}
