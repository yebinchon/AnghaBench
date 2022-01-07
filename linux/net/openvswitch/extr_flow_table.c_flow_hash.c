
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sw_flow_key_range {int start; int end; } ;
struct sw_flow_key {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int jhash2 (int const*,int,int ) ;

__attribute__((used)) static u32 flow_hash(const struct sw_flow_key *key,
       const struct sw_flow_key_range *range)
{
 int key_start = range->start;
 int key_end = range->end;
 const u32 *hash_key = (const u32 *)((const u8 *)key + key_start);
 int hash_u32s = (key_end - key_start) >> 2;


 BUILD_BUG_ON(sizeof(long) % sizeof(u32));

 return jhash2(hash_key, hash_u32s, 0);
}
