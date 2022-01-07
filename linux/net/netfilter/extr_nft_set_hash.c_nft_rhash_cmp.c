
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhashtable_compare_arg {struct nft_rhash_cmp_arg* key; } ;
struct nft_rhash_elem {int ext; } ;
struct nft_rhash_cmp_arg {int genmask; TYPE_1__* set; int key; } ;
struct TYPE_2__ {int klen; } ;


 scalar_t__ memcmp (int ,int ,int ) ;
 int nft_set_elem_active (int *,int ) ;
 scalar_t__ nft_set_elem_expired (int *) ;
 int nft_set_ext_key (int *) ;

__attribute__((used)) static inline int nft_rhash_cmp(struct rhashtable_compare_arg *arg,
    const void *ptr)
{
 const struct nft_rhash_cmp_arg *x = arg->key;
 const struct nft_rhash_elem *he = ptr;

 if (memcmp(nft_set_ext_key(&he->ext), x->key, x->set->klen))
  return 1;
 if (nft_set_elem_expired(&he->ext))
  return 1;
 if (!nft_set_elem_active(&he->ext, x->genmask))
  return 1;
 return 0;
}
