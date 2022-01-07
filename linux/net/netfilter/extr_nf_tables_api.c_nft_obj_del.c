
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object {int list; int rhlhead; } ;


 int list_del_rcu (int *) ;
 int nft_objname_ht ;
 int nft_objname_ht_params ;
 int rhltable_remove (int *,int *,int ) ;

__attribute__((used)) static void nft_obj_del(struct nft_object *obj)
{
 rhltable_remove(&nft_objname_ht, &obj->rhlhead, nft_objname_ht_params);
 list_del_rcu(&obj->list);
}
