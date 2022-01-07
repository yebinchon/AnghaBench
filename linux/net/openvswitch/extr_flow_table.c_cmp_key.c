
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sw_flow_key {int dummy; } ;



__attribute__((used)) static bool cmp_key(const struct sw_flow_key *key1,
      const struct sw_flow_key *key2,
      int key_start, int key_end)
{
 const long *cp1 = (const long *)((const u8 *)key1 + key_start);
 const long *cp2 = (const long *)((const u8 *)key2 + key_start);
 long diffs = 0;
 int i;

 for (i = key_start; i < key_end; i += sizeof(long))
  diffs |= *cp1++ ^ *cp2++;

 return diffs == 0;
}
