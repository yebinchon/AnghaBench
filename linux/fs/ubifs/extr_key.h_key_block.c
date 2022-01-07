
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {unsigned int* u32; } ;
struct ubifs_info {int dummy; } ;


 unsigned int UBIFS_S_KEY_BLOCK_MASK ;

__attribute__((used)) static inline unsigned int key_block(const struct ubifs_info *c,
         const union ubifs_key *key)
{
 return key->u32[1] & UBIFS_S_KEY_BLOCK_MASK;
}
