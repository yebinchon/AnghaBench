
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nft_quota {int flags; int quota; } ;
struct nft_object {int dummy; } ;


 int atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 struct nft_quota* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static void nft_quota_obj_update(struct nft_object *obj,
     struct nft_object *newobj)
{
 struct nft_quota *newpriv = nft_obj_data(newobj);
 struct nft_quota *priv = nft_obj_data(obj);
 u64 newquota;

 newquota = atomic64_read(&newpriv->quota);
 atomic64_set(&priv->quota, newquota);
 priv->flags = newpriv->flags;
}
