
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
typedef int uint32_t ;
struct ubifs_info {int dummy; } ;


 int UBIFS_S_KEY_HASH_MASK ;

__attribute__((used)) static inline uint32_t key_hash(const struct ubifs_info *c,
    const union ubifs_key *key)
{
 return key->u32[1] & UBIFS_S_KEY_HASH_MASK;
}
