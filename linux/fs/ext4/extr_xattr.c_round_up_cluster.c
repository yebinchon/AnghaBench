
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_blkbits; struct super_block* i_sb; } ;
struct TYPE_2__ {int s_cluster_bits; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;

__attribute__((used)) static inline size_t round_up_cluster(struct inode *inode, size_t length)
{
 struct super_block *sb = inode->i_sb;
 size_t cluster_size = 1 << (EXT4_SB(sb)->s_cluster_bits +
        inode->i_blkbits);
 size_t mask = ~(cluster_size - 1);

 return (length + cluster_size - 1) & mask;
}
