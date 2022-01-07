
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_object {int key; } ;


 int nft_objname_hash (int *,int ,int ) ;

__attribute__((used)) static u32 nft_objname_hash_obj(const void *data, u32 len, u32 seed)
{
 const struct nft_object *obj = data;

 return nft_objname_hash(&obj->key, 0, seed);
}
