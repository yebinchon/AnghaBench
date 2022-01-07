
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct file {int f_version; } ;
struct ext4_iloc {int bh; } ;
struct ext4_dir_entry_2 {char* name; int name_len; int rec_len; int file_type; int inode; } ;
struct dir_context {unsigned int pos; } ;
struct TYPE_2__ {int xattr_sem; } ;


 int DT_DIR ;
 int ENOMEM ;
 int EXT4_DIR_REC_LEN (int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INLINE_DOTDOT_SIZE ;
 int GFP_NOFS ;
 int brelse (int ) ;
 int dir_emit (struct dir_context*,char*,int,int,int ) ;
 int down_read (int *) ;
 scalar_t__ ext4_check_dir_entry (struct inode*,struct file*,struct ext4_dir_entry_2*,int ,void*,int,void*) ;
 int ext4_get_inline_size (struct inode*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_read_inline_data (struct inode*,void*,int,struct ext4_iloc*) ;
 int ext4_rec_len_from_disk (int ,int) ;
 struct inode* file_inode (struct file*) ;
 int get_dtype (struct super_block*,int ) ;
 int inode_eq_iversion (struct inode*,int ) ;
 int inode_query_iversion (struct inode*) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int up_read (int *) ;

int ext4_read_inline_dir(struct file *file,
    struct dir_context *ctx,
    int *has_inline_data)
{
 unsigned int offset, parent_ino;
 int i;
 struct ext4_dir_entry_2 *de;
 struct super_block *sb;
 struct inode *inode = file_inode(file);
 int ret, inline_size = 0;
 struct ext4_iloc iloc;
 void *dir_buf = ((void*)0);
 int dotdot_offset, dotdot_size, extra_offset, extra_size;

 ret = ext4_get_inode_loc(inode, &iloc);
 if (ret)
  return ret;

 down_read(&EXT4_I(inode)->xattr_sem);
 if (!ext4_has_inline_data(inode)) {
  up_read(&EXT4_I(inode)->xattr_sem);
  *has_inline_data = 0;
  goto out;
 }

 inline_size = ext4_get_inline_size(inode);
 dir_buf = kmalloc(inline_size, GFP_NOFS);
 if (!dir_buf) {
  ret = -ENOMEM;
  up_read(&EXT4_I(inode)->xattr_sem);
  goto out;
 }

 ret = ext4_read_inline_data(inode, dir_buf, inline_size, &iloc);
 up_read(&EXT4_I(inode)->xattr_sem);
 if (ret < 0)
  goto out;

 ret = 0;
 sb = inode->i_sb;
 parent_ino = le32_to_cpu(((struct ext4_dir_entry_2 *)dir_buf)->inode);
 offset = ctx->pos;
 dotdot_offset = EXT4_DIR_REC_LEN(1);
 dotdot_size = dotdot_offset + EXT4_DIR_REC_LEN(2);
 extra_offset = dotdot_size - EXT4_INLINE_DOTDOT_SIZE;
 extra_size = extra_offset + inline_size;







 if (!inode_eq_iversion(inode, file->f_version)) {
  for (i = 0; i < extra_size && i < offset;) {




   if (!i) {
    i = dotdot_offset;
    continue;
   } else if (i == dotdot_offset) {
    i = dotdot_size;
    continue;
   }



   de = (struct ext4_dir_entry_2 *)
    (dir_buf + i - extra_offset);






   if (ext4_rec_len_from_disk(de->rec_len, extra_size)
    < EXT4_DIR_REC_LEN(1))
    break;
   i += ext4_rec_len_from_disk(de->rec_len,
          extra_size);
  }
  offset = i;
  ctx->pos = offset;
  file->f_version = inode_query_iversion(inode);
 }

 while (ctx->pos < extra_size) {
  if (ctx->pos == 0) {
   if (!dir_emit(ctx, ".", 1, inode->i_ino, DT_DIR))
    goto out;
   ctx->pos = dotdot_offset;
   continue;
  }

  if (ctx->pos == dotdot_offset) {
   if (!dir_emit(ctx, "..", 2, parent_ino, DT_DIR))
    goto out;
   ctx->pos = dotdot_size;
   continue;
  }

  de = (struct ext4_dir_entry_2 *)
   (dir_buf + ctx->pos - extra_offset);
  if (ext4_check_dir_entry(inode, file, de, iloc.bh, dir_buf,
      extra_size, ctx->pos))
   goto out;
  if (le32_to_cpu(de->inode)) {
   if (!dir_emit(ctx, de->name, de->name_len,
          le32_to_cpu(de->inode),
          get_dtype(sb, de->file_type)))
    goto out;
  }
  ctx->pos += ext4_rec_len_from_disk(de->rec_len, extra_size);
 }
out:
 kfree(dir_buf);
 brelse(iloc.bh);
 return ret;
}
