
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UBIFS_S_KEY_HASH_MASK ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline uint32_t key_mask_hash(uint32_t hash)
{
 hash &= UBIFS_S_KEY_HASH_MASK;
 if (unlikely(hash <= 2))
  hash += 3;
 return hash;
}
