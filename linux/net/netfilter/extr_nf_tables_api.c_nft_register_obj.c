
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object_type {scalar_t__ type; int list; } ;


 int EINVAL ;
 int NFNL_SUBSYS_NFTABLES ;
 scalar_t__ NFT_OBJECT_UNSPEC ;
 int list_add_rcu (int *,int *) ;
 int nf_tables_objects ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

int nft_register_obj(struct nft_object_type *obj_type)
{
 if (obj_type->type == NFT_OBJECT_UNSPEC)
  return -EINVAL;

 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 list_add_rcu(&obj_type->list, &nf_tables_objects);
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
 return 0;
}
