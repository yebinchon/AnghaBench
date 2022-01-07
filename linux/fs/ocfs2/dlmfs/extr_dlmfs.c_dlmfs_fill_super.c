
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;


 int DLMFS_MAGIC ;
 int ENOMEM ;
 int MAX_LFS_FILESIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int d_make_root (int ) ;
 int dlmfs_get_root_inode (struct super_block*) ;
 int dlmfs_ops ;

__attribute__((used)) static int dlmfs_fill_super(struct super_block * sb,
       void * data,
       int silent)
{
 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = DLMFS_MAGIC;
 sb->s_op = &dlmfs_ops;
 sb->s_root = d_make_root(dlmfs_get_root_inode(sb));
 if (!sb->s_root)
  return -ENOMEM;
 return 0;
}
