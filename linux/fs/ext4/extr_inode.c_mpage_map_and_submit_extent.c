
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_7__ {TYPE_1__* io_end; } ;
struct ext4_map_blocks {scalar_t__ m_len; scalar_t__ m_lblk; } ;
struct mpage_da_data {scalar_t__ first_page; TYPE_2__ io_submit; struct ext4_map_blocks map; struct inode* inode; } ;
struct inode {scalar_t__ i_blkbits; int i_ino; struct super_block* i_sb; } ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;
struct TYPE_9__ {scalar_t__ i_disksize; int i_data_sem; } ;
struct TYPE_8__ {int s_mount_flags; } ;
struct TYPE_6__ {scalar_t__ offset; } ;


 int ENOMEM ;
 int ENOSPC ;
 TYPE_5__* EXT4_I (struct inode*) ;
 int EXT4_MF_FS_ABORTED ;
 TYPE_3__* EXT4_SB (struct super_block*) ;
 int KERN_CRIT ;
 scalar_t__ PAGE_SHIFT ;
 int down_write (int *) ;
 scalar_t__ ext4_count_free_clusters (struct super_block*) ;
 int ext4_error (struct super_block*,char*,int ) ;
 scalar_t__ ext4_forced_shutdown (TYPE_3__*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_msg (struct super_block*,int ,char*,...) ;
 int ext4_print_free_blocks (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int mpage_map_and_submit_buffers (struct mpage_da_data*) ;
 int mpage_map_one_extent (int *,struct mpage_da_data*) ;
 int up_write (int *) ;

__attribute__((used)) static int mpage_map_and_submit_extent(handle_t *handle,
           struct mpage_da_data *mpd,
           bool *give_up_on_write)
{
 struct inode *inode = mpd->inode;
 struct ext4_map_blocks *map = &mpd->map;
 int err;
 loff_t disksize;
 int progress = 0;

 mpd->io_submit.io_end->offset =
    ((loff_t)map->m_lblk) << inode->i_blkbits;
 do {
  err = mpage_map_one_extent(handle, mpd);
  if (err < 0) {
   struct super_block *sb = inode->i_sb;

   if (ext4_forced_shutdown(EXT4_SB(sb)) ||
       EXT4_SB(sb)->s_mount_flags & EXT4_MF_FS_ABORTED)
    goto invalidate_dirty_pages;





   if ((err == -ENOMEM) ||
       (err == -ENOSPC && ext4_count_free_clusters(sb))) {
    if (progress)
     goto update_disksize;
    return err;
   }
   ext4_msg(sb, KERN_CRIT,
     "Delayed block allocation failed for "
     "inode %lu at logical offset %llu with"
     " max blocks %u with error %d",
     inode->i_ino,
     (unsigned long long)map->m_lblk,
     (unsigned)map->m_len, -err);
   ext4_msg(sb, KERN_CRIT,
     "This should not happen!! Data will "
     "be lost\n");
   if (err == -ENOSPC)
    ext4_print_free_blocks(inode);
  invalidate_dirty_pages:
   *give_up_on_write = 1;
   return err;
  }
  progress = 1;




  err = mpage_map_and_submit_buffers(mpd);
  if (err < 0)
   goto update_disksize;
 } while (map->m_len);

update_disksize:




 disksize = ((loff_t)mpd->first_page) << PAGE_SHIFT;
 if (disksize > EXT4_I(inode)->i_disksize) {
  int err2;
  loff_t i_size;

  down_write(&EXT4_I(inode)->i_data_sem);
  i_size = i_size_read(inode);
  if (disksize > i_size)
   disksize = i_size;
  if (disksize > EXT4_I(inode)->i_disksize)
   EXT4_I(inode)->i_disksize = disksize;
  up_write(&EXT4_I(inode)->i_data_sem);
  err2 = ext4_mark_inode_dirty(handle, inode);
  if (err2)
   ext4_error(inode->i_sb,
       "Failed to mark inode %lu dirty",
       inode->i_ino);
  if (!err)
   err = err2;
 }
 return err;
}
