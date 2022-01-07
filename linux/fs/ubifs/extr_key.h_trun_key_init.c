
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
struct ubifs_info {int dummy; } ;
typedef int ino_t ;


 int UBIFS_S_KEY_BLOCK_BITS ;
 int UBIFS_TRUN_KEY ;

__attribute__((used)) static inline void trun_key_init(const struct ubifs_info *c,
     union ubifs_key *key, ino_t inum)
{
 key->u32[0] = inum;
 key->u32[1] = UBIFS_TRUN_KEY << UBIFS_S_KEY_BLOCK_BITS;
}
