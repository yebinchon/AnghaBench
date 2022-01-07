
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int s_blocksize; unsigned long s_blocksize_bits; } ;
struct ocfs2_dir_entry {int rec_len; int file_type; int inode; int name_len; int name; } ;
struct inode {struct super_block* i_sb; } ;
struct dir_context {int pos; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int OCFS2_BH_READAHEAD ;
 scalar_t__ OCFS2_DIR_REC_LEN (int) ;
 int brelse (struct buffer_head*) ;
 int dir_emit (struct dir_context*,int ,int ,scalar_t__,int ) ;
 int fs_ftype_to_dtype (int ) ;
 int i_size_read (struct inode*) ;
 int inode_eq_iversion (struct inode*,int ) ;
 int inode_query_iversion (struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int ocfs2_check_dir_entry (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ;
 scalar_t__ ocfs2_read_dir_block (struct inode*,unsigned long,struct buffer_head**,int ) ;

__attribute__((used)) static int ocfs2_dir_foreach_blk_el(struct inode *inode,
        u64 *f_version,
        struct dir_context *ctx,
        bool persist)
{
 unsigned long offset, blk, last_ra_blk = 0;
 int i;
 struct buffer_head * bh, * tmp;
 struct ocfs2_dir_entry * de;
 struct super_block * sb = inode->i_sb;
 unsigned int ra_sectors = 16;
 int stored = 0;

 bh = ((void*)0);

 offset = ctx->pos & (sb->s_blocksize - 1);

 while (ctx->pos < i_size_read(inode)) {
  blk = ctx->pos >> sb->s_blocksize_bits;
  if (ocfs2_read_dir_block(inode, blk, &bh, 0)) {

   ctx->pos += sb->s_blocksize - offset;
   continue;
  }






  if (!last_ra_blk
      || (((last_ra_blk - blk) << 9) <= (ra_sectors / 2))) {
   for (i = ra_sectors >> (sb->s_blocksize_bits - 9);
        i > 0; i--) {
    tmp = ((void*)0);
    if (!ocfs2_read_dir_block(inode, ++blk, &tmp,
         OCFS2_BH_READAHEAD))
     brelse(tmp);
   }
   last_ra_blk = blk;
   ra_sectors = 8;
  }





  if (!inode_eq_iversion(inode, *f_version)) {
   for (i = 0; i < sb->s_blocksize && i < offset; ) {
    de = (struct ocfs2_dir_entry *) (bh->b_data + i);






    if (le16_to_cpu(de->rec_len) <
        OCFS2_DIR_REC_LEN(1))
     break;
    i += le16_to_cpu(de->rec_len);
   }
   offset = i;
   ctx->pos = (ctx->pos & ~(sb->s_blocksize - 1))
    | offset;
   *f_version = inode_query_iversion(inode);
  }

  while (ctx->pos < i_size_read(inode)
         && offset < sb->s_blocksize) {
   de = (struct ocfs2_dir_entry *) (bh->b_data + offset);
   if (!ocfs2_check_dir_entry(inode, de, bh, offset)) {


    ctx->pos = (ctx->pos | (sb->s_blocksize - 1)) + 1;
    break;
   }
   if (le64_to_cpu(de->inode)) {
    if (!dir_emit(ctx, de->name,
      de->name_len,
      le64_to_cpu(de->inode),
     fs_ftype_to_dtype(de->file_type))) {
     brelse(bh);
     return 0;
    }
    stored++;
   }
   offset += le16_to_cpu(de->rec_len);
   ctx->pos += le16_to_cpu(de->rec_len);
  }
  offset = 0;
  brelse(bh);
  bh = ((void*)0);
  if (!persist && stored)
   break;
 }
 return 0;
}
