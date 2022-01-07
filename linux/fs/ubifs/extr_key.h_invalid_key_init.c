
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
struct ubifs_info {int dummy; } ;


 int UBIFS_INVALID_KEY ;

__attribute__((used)) static inline void invalid_key_init(const struct ubifs_info *c,
        union ubifs_key *key)
{
 key->u32[0] = 0xDEADBEAF;
 key->u32[1] = UBIFS_INVALID_KEY;
}
