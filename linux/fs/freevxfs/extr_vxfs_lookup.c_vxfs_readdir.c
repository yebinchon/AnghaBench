
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vxfs_sb_info {int dummy; } ;
struct vxfs_direct {char* d_name; int d_reclen; int d_ino; int d_namelen; } ;
struct vxfs_dirblk {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct page {int dummy; } ;
struct inode {int i_mapping; int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;
typedef int loff_t ;
struct TYPE_2__ {int vii_dotdot; } ;


 int DT_DIR ;
 int DT_UNKNOWN ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VXFS_DIRBLKOV (struct vxfs_sb_info*,struct vxfs_dirblk*) ;
 int VXFS_DIRROUND (int ) ;
 TYPE_1__* VXFS_INO (struct inode*) ;
 struct vxfs_sb_info* VXFS_SBI (struct super_block*) ;
 int dir_emit (struct dir_context*,char*,int,int ,int ) ;
 int dir_emit_dot (struct file*,struct dir_context*) ;
 struct inode* file_inode (struct file*) ;
 int fs16_to_cpu (struct vxfs_sb_info*,int ) ;
 int fs32_to_cpu (struct vxfs_sb_info*,int ) ;
 scalar_t__ page_address (struct page*) ;
 struct page* vxfs_get_page (int ,int) ;
 int vxfs_put_page (struct page*) ;

__attribute__((used)) static int
vxfs_readdir(struct file *fp, struct dir_context *ctx)
{
 struct inode *ip = file_inode(fp);
 struct super_block *sbp = ip->i_sb;
 u_long bsize = sbp->s_blocksize;
 loff_t pos, limit;
 struct vxfs_sb_info *sbi = VXFS_SBI(sbp);

 if (ctx->pos == 0) {
  if (!dir_emit_dot(fp, ctx))
   goto out;
  ctx->pos++;
 }
 if (ctx->pos == 1) {
  if (!dir_emit(ctx, "..", 2, VXFS_INO(ip)->vii_dotdot, DT_DIR))
   goto out;
  ctx->pos++;
 }

 limit = VXFS_DIRROUND(ip->i_size);
 if (ctx->pos > limit)
  goto out;

 pos = ctx->pos & ~3L;

 while (pos < limit) {
  struct page *pp;
  char *kaddr;
  int pg_ofs = pos & ~PAGE_MASK;
  int rc = 0;

  pp = vxfs_get_page(ip->i_mapping, pos >> PAGE_SHIFT);
  if (IS_ERR(pp))
   return -ENOMEM;

  kaddr = (char *)page_address(pp);

  while (pg_ofs < PAGE_SIZE && pos < limit) {
   struct vxfs_direct *de;

   if ((pos & (bsize - 1)) < 4) {
    struct vxfs_dirblk *dbp =
     (struct vxfs_dirblk *)
      (kaddr + (pos & ~PAGE_MASK));
    int overhead = VXFS_DIRBLKOV(sbi, dbp);

    pos += overhead;
    pg_ofs += overhead;
   }
   de = (struct vxfs_direct *)(kaddr + pg_ofs);

   if (!de->d_reclen) {
    pos += bsize - 1;
    pos &= ~(bsize - 1);
    break;
   }

   pg_ofs += fs16_to_cpu(sbi, de->d_reclen);
   pos += fs16_to_cpu(sbi, de->d_reclen);
   if (!de->d_ino)
    continue;

   rc = dir_emit(ctx, de->d_name,
     fs16_to_cpu(sbi, de->d_namelen),
     fs32_to_cpu(sbi, de->d_ino),
     DT_UNKNOWN);
   if (!rc) {

    pos -= fs16_to_cpu(sbi, de->d_reclen);
    break;
   }
  }
  vxfs_put_page(pp);
  if (!rc)
   break;
 }

 ctx->pos = pos | 2;

out:
 return 0;
}
