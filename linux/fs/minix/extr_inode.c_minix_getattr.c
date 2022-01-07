
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int s_blocksize; } ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int blocks; int blksize; int size; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;


 int BLOCK_SIZE ;
 scalar_t__ INODE_VERSION (struct inode*) ;
 scalar_t__ MINIX_V1 ;
 int V1_minix_blocks (int ,struct super_block*) ;
 int V2_minix_blocks (int ,struct super_block*) ;
 struct inode* d_inode (TYPE_1__*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int minix_getattr(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int flags)
{
 struct super_block *sb = path->dentry->d_sb;
 struct inode *inode = d_inode(path->dentry);

 generic_fillattr(inode, stat);
 if (INODE_VERSION(inode) == MINIX_V1)
  stat->blocks = (BLOCK_SIZE / 512) * V1_minix_blocks(stat->size, sb);
 else
  stat->blocks = (sb->s_blocksize / 512) * V2_minix_blocks(stat->size, sb);
 stat->blksize = sb->s_blocksize;
 return 0;
}
