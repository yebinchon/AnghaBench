
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int * u32; void** j32; } ;
struct ubifs_info {int dummy; } ;


 scalar_t__ UBIFS_MAX_KEY_LEN ;
 void* cpu_to_le32 (int ) ;
 int memset (void*,int ,scalar_t__) ;

__attribute__((used)) static inline void key_write(const struct ubifs_info *c,
        const union ubifs_key *from, void *to)
{
 union ubifs_key *t = to;

 t->j32[0] = cpu_to_le32(from->u32[0]);
 t->j32[1] = cpu_to_le32(from->u32[1]);
 memset(to + 8, 0, UBIFS_MAX_KEY_LEN - 8);
}
