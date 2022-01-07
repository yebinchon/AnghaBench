
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int kvfree (int ) ;
 int nf_ct_expect_cachep ;
 int nf_ct_expect_hash ;
 int rcu_barrier () ;

void nf_conntrack_expect_fini(void)
{
 rcu_barrier();
 kmem_cache_destroy(nf_ct_expect_cachep);
 kvfree(nf_ct_expect_hash);
}
