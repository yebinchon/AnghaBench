
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PNEIGH_HASHMASK ;

__attribute__((used)) static u32 pneigh_hash(const void *pkey, unsigned int key_len)
{
 u32 hash_val = *(u32 *)(pkey + key_len - 4);
 hash_val ^= (hash_val >> 16);
 hash_val ^= hash_val >> 8;
 hash_val ^= hash_val >> 4;
 hash_val &= PNEIGH_HASHMASK;
 return hash_val;
}
