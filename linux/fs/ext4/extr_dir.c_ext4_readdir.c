
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_blocksize; TYPE_2__* s_bdev; } ;
struct inode {int i_size; int i_blkbits; int i_blocks; struct super_block* i_sb; } ;
struct fscrypt_str {int len; int * name; } ;
struct TYPE_7__ {int prev_pos; } ;
struct file {int f_version; TYPE_3__ f_ra; } ;
struct ext4_map_blocks {int m_lblk; int m_len; int m_pblk; } ;
struct ext4_dir_entry_2 {int name_len; int rec_len; int file_type; int inode; int * name; } ;
struct dir_context {int pos; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_6__ {TYPE_1__* bd_inode; } ;
struct TYPE_5__ {int i_mapping; } ;


 int ENOKEY ;
 int ERESTARTSYS ;
 int ERR_BAD_DX_DIR ;
 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 scalar_t__ EXT4_DIR_REC_LEN (int) ;
 int EXT4_ERROR_FILE (struct file*,int ,char*,unsigned long long) ;
 int EXT4_INODE_INDEX ;
 int EXT4_NAME_LEN ;
 struct fscrypt_str FSTR_INIT (int *,int) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int buffer_verified (struct buffer_head*) ;
 int cond_resched () ;
 int current ;
 int dir_emit (struct dir_context*,int *,int,scalar_t__,int ) ;
 int dir_relax_shared (struct inode*) ;
 struct buffer_head* ext4_bread (int *,struct inode*,int,int ) ;
 scalar_t__ ext4_check_dir_entry (struct inode*,struct file*,struct ext4_dir_entry_2*,struct buffer_head*,scalar_t__,int ,unsigned int) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_dirblock_csum_verify (struct inode*,struct buffer_head*) ;
 int ext4_dx_readdir (struct file*,struct dir_context*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int ext4_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int ) ;
 int ext4_read_inline_dir (struct file*,struct dir_context*,int*) ;
 scalar_t__ ext4_rec_len_from_disk (int ,int) ;
 scalar_t__ fatal_signal_pending (int ) ;
 struct inode* file_inode (struct file*) ;
 int fscrypt_fname_alloc_buffer (struct inode*,int ,struct fscrypt_str*) ;
 int fscrypt_fname_disk_to_usr (struct inode*,int ,int ,struct fscrypt_str*,struct fscrypt_str*) ;
 int fscrypt_fname_free_buffer (struct fscrypt_str*) ;
 int fscrypt_get_encryption_info (struct inode*) ;
 int get_dtype (struct super_block*,int ) ;
 int inode_eq_iversion (struct inode*,int ) ;
 int inode_query_iversion (struct inode*) ;
 scalar_t__ is_dx_dir (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int page_cache_sync_readahead (int ,TYPE_3__*,struct file*,int,int) ;
 int ra_has_index (TYPE_3__*,int) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static int ext4_readdir(struct file *file, struct dir_context *ctx)
{
 unsigned int offset;
 int i;
 struct ext4_dir_entry_2 *de;
 int err;
 struct inode *inode = file_inode(file);
 struct super_block *sb = inode->i_sb;
 struct buffer_head *bh = ((void*)0);
 struct fscrypt_str fstr = FSTR_INIT(((void*)0), 0);

 if (IS_ENCRYPTED(inode)) {
  err = fscrypt_get_encryption_info(inode);
  if (err && err != -ENOKEY)
   return err;
 }

 if (is_dx_dir(inode)) {
  err = ext4_dx_readdir(file, ctx);
  if (err != ERR_BAD_DX_DIR) {
   return err;
  }




  ext4_clear_inode_flag(file_inode(file),
          EXT4_INODE_INDEX);
 }

 if (ext4_has_inline_data(inode)) {
  int has_inline_data = 1;
  err = ext4_read_inline_dir(file, ctx,
        &has_inline_data);
  if (has_inline_data)
   return err;
 }

 if (IS_ENCRYPTED(inode)) {
  err = fscrypt_fname_alloc_buffer(inode, EXT4_NAME_LEN, &fstr);
  if (err < 0)
   return err;
 }

 while (ctx->pos < inode->i_size) {
  struct ext4_map_blocks map;

  if (fatal_signal_pending(current)) {
   err = -ERESTARTSYS;
   goto errout;
  }
  cond_resched();
  offset = ctx->pos & (sb->s_blocksize - 1);
  map.m_lblk = ctx->pos >> EXT4_BLOCK_SIZE_BITS(sb);
  map.m_len = 1;
  err = ext4_map_blocks(((void*)0), inode, &map, 0);
  if (err == 0) {


   if (map.m_len == 0)
    map.m_len = 1;
   ctx->pos += map.m_len * sb->s_blocksize;
   continue;
  }
  if (err > 0) {
   pgoff_t index = map.m_pblk >>
     (PAGE_SHIFT - inode->i_blkbits);
   if (!ra_has_index(&file->f_ra, index))
    page_cache_sync_readahead(
     sb->s_bdev->bd_inode->i_mapping,
     &file->f_ra, file,
     index, 1);
   file->f_ra.prev_pos = (loff_t)index << PAGE_SHIFT;
   bh = ext4_bread(((void*)0), inode, map.m_lblk, 0);
   if (IS_ERR(bh)) {
    err = PTR_ERR(bh);
    bh = ((void*)0);
    goto errout;
   }
  }

  if (!bh) {

   if (ctx->pos > inode->i_blocks << 9)
    break;
   ctx->pos += sb->s_blocksize - offset;
   continue;
  }


  if (!buffer_verified(bh) &&
      !ext4_dirblock_csum_verify(inode, bh)) {
   EXT4_ERROR_FILE(file, 0, "directory fails checksum "
     "at offset %llu",
     (unsigned long long)ctx->pos);
   ctx->pos += sb->s_blocksize - offset;
   brelse(bh);
   bh = ((void*)0);
   continue;
  }
  set_buffer_verified(bh);





  if (!inode_eq_iversion(inode, file->f_version)) {
   for (i = 0; i < sb->s_blocksize && i < offset; ) {
    de = (struct ext4_dir_entry_2 *)
     (bh->b_data + i);






    if (ext4_rec_len_from_disk(de->rec_len,
     sb->s_blocksize) < EXT4_DIR_REC_LEN(1))
     break;
    i += ext4_rec_len_from_disk(de->rec_len,
           sb->s_blocksize);
   }
   offset = i;
   ctx->pos = (ctx->pos & ~(sb->s_blocksize - 1))
    | offset;
   file->f_version = inode_query_iversion(inode);
  }

  while (ctx->pos < inode->i_size
         && offset < sb->s_blocksize) {
   de = (struct ext4_dir_entry_2 *) (bh->b_data + offset);
   if (ext4_check_dir_entry(inode, file, de, bh,
       bh->b_data, bh->b_size,
       offset)) {



    ctx->pos = (ctx->pos |
      (sb->s_blocksize - 1)) + 1;
    break;
   }
   offset += ext4_rec_len_from_disk(de->rec_len,
     sb->s_blocksize);
   if (le32_to_cpu(de->inode)) {
    if (!IS_ENCRYPTED(inode)) {
     if (!dir_emit(ctx, de->name,
         de->name_len,
         le32_to_cpu(de->inode),
         get_dtype(sb, de->file_type)))
      goto done;
    } else {
     int save_len = fstr.len;
     struct fscrypt_str de_name =
       FSTR_INIT(de->name,
        de->name_len);


     err = fscrypt_fname_disk_to_usr(inode,
      0, 0, &de_name, &fstr);
     de_name = fstr;
     fstr.len = save_len;
     if (err)
      goto errout;
     if (!dir_emit(ctx,
         de_name.name, de_name.len,
         le32_to_cpu(de->inode),
         get_dtype(sb, de->file_type)))
      goto done;
    }
   }
   ctx->pos += ext4_rec_len_from_disk(de->rec_len,
      sb->s_blocksize);
  }
  if ((ctx->pos < inode->i_size) && !dir_relax_shared(inode))
   goto done;
  brelse(bh);
  bh = ((void*)0);
  offset = 0;
 }
done:
 err = 0;
errout:
 fscrypt_fname_free_buffer(&fstr);
 brelse(bh);
 return err;
}
