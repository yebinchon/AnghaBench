
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_object_hash_key {int name; int table; } ;


 int hash_ptr (int ,int) ;
 int jhash (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static u32 nft_objname_hash(const void *data, u32 len, u32 seed)
{
 const struct nft_object_hash_key *k = data;

 seed ^= hash_ptr(k->table, 32);

 return jhash(k->name, strlen(k->name), seed);
}
