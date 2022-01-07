
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_ino; int i_sb; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;
struct buffer_head {int b_data; } ;
typedef int __u64 ;
typedef int __be64 ;


 int EINVAL ;
 int OMFS_DIR_START ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 struct inode* file_inode (struct file*) ;
 struct buffer_head* omfs_bread (int ,int ) ;
 int omfs_fill_chain (struct inode*,struct dir_context*,int ,unsigned int) ;

__attribute__((used)) static int omfs_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *dir = file_inode(file);
 struct buffer_head *bh;
 __be64 *p;
 unsigned int hchain, hindex;
 int nbuckets;

 if (ctx->pos >> 32)
  return -EINVAL;

 if (ctx->pos < 1 << 20) {
  if (!dir_emit_dots(file, ctx))
   return 0;
  ctx->pos = 1 << 20;
 }

 nbuckets = (dir->i_size - OMFS_DIR_START) / 8;


 hchain = (ctx->pos >> 20) - 1;
 hindex = ctx->pos & 0xfffff;

 bh = omfs_bread(dir->i_sb, dir->i_ino);
 if (!bh)
  return -EINVAL;

 p = (__be64 *)(bh->b_data + OMFS_DIR_START) + hchain;

 for (; hchain < nbuckets; hchain++) {
  __u64 fsblock = be64_to_cpu(*p++);
  if (!omfs_fill_chain(dir, ctx, fsblock, hindex))
   break;
  hindex = 0;
  ctx->pos = (hchain+2) << 20;
 }
 brelse(bh);
 return 0;
}
