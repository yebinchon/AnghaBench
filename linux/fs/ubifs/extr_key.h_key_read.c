
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int * j32; void** u32; } ;
struct ubifs_info {int dummy; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static inline void key_read(const struct ubifs_info *c, const void *from,
       union ubifs_key *to)
{
 const union ubifs_key *f = from;

 to->u32[0] = le32_to_cpu(f->j32[0]);
 to->u32[1] = le32_to_cpu(f->j32[1]);
}
