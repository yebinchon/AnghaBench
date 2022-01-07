
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
typedef int loff_t ;



__attribute__((used)) static inline unsigned int ol_dqblk_block_offset(struct super_block *sb, loff_t off)
{
 return off & ((1 << sb->s_blocksize_bits) - 1);
}
