
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; struct ramfs_fs_info* s_fs_info; } ;
struct TYPE_2__ {int mode; } ;
struct ramfs_fs_info {TYPE_1__ mount_opts; } ;
struct inode {int dummy; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int MAX_LFS_FILESIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int RAMFS_MAGIC ;
 int S_IFDIR ;
 int d_make_root (struct inode*) ;
 struct inode* ramfs_get_inode (struct super_block*,int *,int,int ) ;
 int ramfs_ops ;

__attribute__((used)) static int ramfs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct ramfs_fs_info *fsi = sb->s_fs_info;
 struct inode *inode;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = RAMFS_MAGIC;
 sb->s_op = &ramfs_ops;
 sb->s_time_gran = 1;

 inode = ramfs_get_inode(sb, ((void*)0), S_IFDIR | fsi->mount_opts.mode, 0);
 sb->s_root = d_make_root(inode);
 if (!sb->s_root)
  return -ENOMEM;

 return 0;
}
