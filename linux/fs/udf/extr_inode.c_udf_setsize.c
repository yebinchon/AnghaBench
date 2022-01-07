
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; unsigned int i_lenAlloc; int i_data_sem; scalar_t__ i_lenEAttr; TYPE_1__ i_ext; } ;
struct inode {unsigned int i_size; int i_ctime; int i_mtime; int i_mapping; int i_mode; } ;
typedef unsigned int loff_t ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int block_truncate_page (int ,unsigned int,int ) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 unsigned int i_blocksize (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (scalar_t__,int,unsigned int) ;
 int truncate_setsize (struct inode*,unsigned int) ;
 int udf_clear_extent_cache (struct inode*) ;
 int udf_expand_file_adinicb (struct inode*) ;
 int udf_extend_file (struct inode*,unsigned int) ;
 unsigned int udf_file_entry_alloc_offset (struct inode*) ;
 int udf_get_block ;
 int udf_sync_inode (struct inode*) ;
 int udf_truncate_extents (struct inode*) ;
 int up_write (int *) ;

int udf_setsize(struct inode *inode, loff_t newsize)
{
 int err;
 struct udf_inode_info *iinfo;
 unsigned int bsize = i_blocksize(inode);

 if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
       S_ISLNK(inode->i_mode)))
  return -EINVAL;
 if (IS_APPEND(inode) || IS_IMMUTABLE(inode))
  return -EPERM;

 iinfo = UDF_I(inode);
 if (newsize > inode->i_size) {
  down_write(&iinfo->i_data_sem);
  if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
   if (bsize <
       (udf_file_entry_alloc_offset(inode) + newsize)) {
    err = udf_expand_file_adinicb(inode);
    if (err)
     return err;
    down_write(&iinfo->i_data_sem);
   } else {
    iinfo->i_lenAlloc = newsize;
    goto set_size;
   }
  }
  err = udf_extend_file(inode, newsize);
  if (err) {
   up_write(&iinfo->i_data_sem);
   return err;
  }
set_size:
  up_write(&iinfo->i_data_sem);
  truncate_setsize(inode, newsize);
 } else {
  if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
   down_write(&iinfo->i_data_sem);
   udf_clear_extent_cache(inode);
   memset(iinfo->i_ext.i_data + iinfo->i_lenEAttr + newsize,
          0x00, bsize - newsize -
          udf_file_entry_alloc_offset(inode));
   iinfo->i_lenAlloc = newsize;
   truncate_setsize(inode, newsize);
   up_write(&iinfo->i_data_sem);
   goto update_time;
  }
  err = block_truncate_page(inode->i_mapping, newsize,
       udf_get_block);
  if (err)
   return err;
  truncate_setsize(inode, newsize);
  down_write(&iinfo->i_data_sem);
  udf_clear_extent_cache(inode);
  err = udf_truncate_extents(inode);
  up_write(&iinfo->i_data_sem);
  if (err)
   return err;
 }
update_time:
 inode->i_mtime = inode->i_ctime = current_time(inode);
 if (IS_SYNC(inode))
  udf_sync_inode(inode);
 else
  mark_inode_dirty(inode);
 return 0;
}
