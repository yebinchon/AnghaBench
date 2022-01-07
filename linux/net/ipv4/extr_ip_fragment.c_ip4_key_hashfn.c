
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct frag_v4_compare_key {int dummy; } ;


 int jhash2 (void const*,int,int ) ;

__attribute__((used)) static u32 ip4_key_hashfn(const void *data, u32 len, u32 seed)
{
 return jhash2(data,
        sizeof(struct frag_v4_compare_key) / sizeof(u32), seed);
}
