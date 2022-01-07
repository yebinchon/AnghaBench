
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhashtable_compare_arg {struct nft_object_hash_key* key; } ;
struct nft_object_hash_key {scalar_t__ table; int name; } ;
struct TYPE_2__ {scalar_t__ table; int name; } ;
struct nft_object {TYPE_1__ key; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int nft_objname_hash_cmp(struct rhashtable_compare_arg *arg,
    const void *ptr)
{
 const struct nft_object_hash_key *k = arg->key;
 const struct nft_object *obj = ptr;

 if (obj->key.table != k->table)
  return -1;

 return strcmp(obj->key.name, k->name);
}
