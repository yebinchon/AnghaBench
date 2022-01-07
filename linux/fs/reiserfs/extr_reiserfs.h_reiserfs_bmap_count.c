
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
typedef int __u32 ;


 int SB_BLOCK_COUNT (struct super_block*) ;

__attribute__((used)) static inline __u32 reiserfs_bmap_count(struct super_block *sb)
{
 return (SB_BLOCK_COUNT(sb) - 1) / (sb->s_blocksize * 8) + 1;
}
