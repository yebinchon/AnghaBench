
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_elem {struct nft_hash_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_hash_elem {int ext; } ;
struct net {int dummy; } ;


 int nft_set_elem_change_active (struct net const*,struct nft_set const*,int *) ;

__attribute__((used)) static void nft_hash_activate(const struct net *net, const struct nft_set *set,
         const struct nft_set_elem *elem)
{
 struct nft_hash_elem *he = elem->priv;

 nft_set_elem_change_active(net, set, &he->ext);
}
