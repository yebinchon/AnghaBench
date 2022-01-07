
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct proto {int owner; int obj_size; struct kmem_cache* slab; } ;
struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int __GFP_ZERO ;
 int kfree (struct sock*) ;
 struct sock* kmalloc (int ,int) ;
 struct sock* kmem_cache_alloc (struct kmem_cache*,int) ;
 int kmem_cache_free (struct kmem_cache*,struct sock*) ;
 scalar_t__ security_sk_alloc (struct sock*,int,int) ;
 int security_sk_free (struct sock*) ;
 int sk_prot_clear_nulls (struct sock*,int ) ;
 int sk_tx_queue_clear (struct sock*) ;
 int try_module_get (int ) ;
 scalar_t__ want_init_on_alloc (int) ;

__attribute__((used)) static struct sock *sk_prot_alloc(struct proto *prot, gfp_t priority,
  int family)
{
 struct sock *sk;
 struct kmem_cache *slab;

 slab = prot->slab;
 if (slab != ((void*)0)) {
  sk = kmem_cache_alloc(slab, priority & ~__GFP_ZERO);
  if (!sk)
   return sk;
  if (want_init_on_alloc(priority))
   sk_prot_clear_nulls(sk, prot->obj_size);
 } else
  sk = kmalloc(prot->obj_size, priority);

 if (sk != ((void*)0)) {
  if (security_sk_alloc(sk, family, priority))
   goto out_free;

  if (!try_module_get(prot->owner))
   goto out_free_sec;
  sk_tx_queue_clear(sk);
 }

 return sk;

out_free_sec:
 security_sk_free(sk);
out_free:
 if (slab != ((void*)0))
  kmem_cache_free(slab, sk);
 else
  kfree(sk);
 return ((void*)0);
}
