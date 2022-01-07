
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_iflags; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; struct ipc_namespace* s_fs_info; } ;
struct ipc_namespace {int dummy; } ;
struct inode {int dummy; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MQUEUE_MAGIC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct inode*) ;
 int SB_I_NODEV ;
 int SB_I_NOEXEC ;
 int S_IFDIR ;
 int S_IRWXUGO ;
 int S_ISVTX ;
 int d_make_root (struct inode*) ;
 struct inode* mqueue_get_inode (struct super_block*,struct ipc_namespace*,int,int *) ;
 int mqueue_super_ops ;

__attribute__((used)) static int mqueue_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct inode *inode;
 struct ipc_namespace *ns = sb->s_fs_info;

 sb->s_iflags |= SB_I_NOEXEC | SB_I_NODEV;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = MQUEUE_MAGIC;
 sb->s_op = &mqueue_super_ops;

 inode = mqueue_get_inode(sb, ns, S_IFDIR | S_ISVTX | S_IRWXUGO, ((void*)0));
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 sb->s_root = d_make_root(inode);
 if (!sb->s_root)
  return -ENOMEM;
 return 0;
}
