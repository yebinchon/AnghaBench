
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set {int klen; } ;
struct nft_rbtree_elem {int ext; } ;


 scalar_t__ memcmp (void const*,int ,int ) ;
 int nft_set_ext_key (int *) ;

__attribute__((used)) static bool nft_rbtree_equal(const struct nft_set *set, const void *this,
        const struct nft_rbtree_elem *interval)
{
 return memcmp(this, nft_set_ext_key(&interval->ext), set->klen) == 0;
}
