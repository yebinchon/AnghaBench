
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;
typedef int __u32 ;


 int REISERFS_SHORT_KEY_LEN ;
 scalar_t__ le32_to_cpu (int ) ;

inline int comp_short_le_keys(const struct reiserfs_key *key1,
         const struct reiserfs_key *key2)
{
 __u32 *k1_u32, *k2_u32;
 int key_length = REISERFS_SHORT_KEY_LEN;

 k1_u32 = (__u32 *) key1;
 k2_u32 = (__u32 *) key2;
 for (; key_length--; ++k1_u32, ++k2_u32) {
  if (le32_to_cpu(*k1_u32) < le32_to_cpu(*k2_u32))
   return -1;
  if (le32_to_cpu(*k1_u32) > le32_to_cpu(*k2_u32))
   return 1;
 }
 return 0;
}
