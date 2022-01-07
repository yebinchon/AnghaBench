
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
struct ubifs_info {int dummy; } ;
typedef int ino_t ;



__attribute__((used)) static inline void highest_ino_key(const struct ubifs_info *c,
    union ubifs_key *key, ino_t inum)
{
 key->u32[0] = inum;
 key->u32[1] = 0xffffffff;
}
