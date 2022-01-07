
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_d_op; int s_root; int s_xattr; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct pseudo_fs_context {int dops; int xattr; scalar_t__ ops; int magic; } ;
struct inode {int i_ino; int i_mode; int i_ctime; int i_mtime; int i_atime; } ;
struct fs_context {struct pseudo_fs_context* fs_private; } ;


 int ENOMEM ;
 int MAX_LFS_FILESIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int S_IFDIR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int current_time (struct inode*) ;
 int d_make_root (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_super_operations ;

__attribute__((used)) static int pseudo_fs_fill_super(struct super_block *s, struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = fc->fs_private;
 struct inode *root;

 s->s_maxbytes = MAX_LFS_FILESIZE;
 s->s_blocksize = PAGE_SIZE;
 s->s_blocksize_bits = PAGE_SHIFT;
 s->s_magic = ctx->magic;
 s->s_op = ctx->ops ?: &simple_super_operations;
 s->s_xattr = ctx->xattr;
 s->s_time_gran = 1;
 root = new_inode(s);
 if (!root)
  return -ENOMEM;






 root->i_ino = 1;
 root->i_mode = S_IFDIR | S_IRUSR | S_IWUSR;
 root->i_atime = root->i_mtime = root->i_ctime = current_time(root);
 s->s_root = d_make_root(root);
 if (!s->s_root)
  return -ENOMEM;
 s->s_d_op = ctx->dops;
 return 0;
}
