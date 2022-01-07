
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int dummy; } ;


 int ENOMEM ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int nf_conntrack_htable_size ;
 int nf_ct_alloc_hashtable (int*,int ) ;
 int nf_ct_expect_cachep ;
 int nf_ct_expect_hash ;
 int nf_ct_expect_hsize ;
 int nf_ct_expect_max ;

int nf_conntrack_expect_init(void)
{
 if (!nf_ct_expect_hsize) {
  nf_ct_expect_hsize = nf_conntrack_htable_size / 256;
  if (!nf_ct_expect_hsize)
   nf_ct_expect_hsize = 1;
 }
 nf_ct_expect_max = nf_ct_expect_hsize * 4;
 nf_ct_expect_cachep = kmem_cache_create("nf_conntrack_expect",
    sizeof(struct nf_conntrack_expect),
    0, 0, ((void*)0));
 if (!nf_ct_expect_cachep)
  return -ENOMEM;

 nf_ct_expect_hash = nf_ct_alloc_hashtable(&nf_ct_expect_hsize, 0);
 if (!nf_ct_expect_hash) {
  kmem_cache_destroy(nf_ct_expect_cachep);
  return -ENOMEM;
 }

 return 0;
}
