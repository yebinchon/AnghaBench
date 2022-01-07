
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int FAT_HASH_BITS ;
 unsigned long hash_32 (int ,int ) ;

__attribute__((used)) static inline unsigned long fat_hash(loff_t i_pos)
{
 return hash_32(i_pos, FAT_HASH_BITS);
}
