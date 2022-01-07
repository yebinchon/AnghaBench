
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iomap {scalar_t__ offset; scalar_t__ length; } ;
struct inode {int i_blkbits; scalar_t__ i_nlink; int i_size; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int i_orphan; } ;


 scalar_t__ ALIGN (int ,int) ;
 int EXT4_HT_INODE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 unsigned int IOMAP_FAULT ;
 unsigned int IOMAP_WRITE ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ ext4_can_truncate (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 scalar_t__ ext4_update_inode_size (struct inode*,int) ;
 int list_empty (int *) ;

__attribute__((used)) static int ext4_iomap_end(struct inode *inode, loff_t offset, loff_t length,
     ssize_t written, unsigned flags, struct iomap *iomap)
{
 int ret = 0;
 handle_t *handle;
 int blkbits = inode->i_blkbits;
 bool truncate = 0;

 if (!(flags & IOMAP_WRITE) || (flags & IOMAP_FAULT))
  return 0;

 handle = ext4_journal_start(inode, EXT4_HT_INODE, 2);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto orphan_del;
 }
 if (ext4_update_inode_size(inode, offset + written))
  ext4_mark_inode_dirty(handle, inode);



 if (iomap->offset + iomap->length >
     ALIGN(inode->i_size, 1 << blkbits)) {
  ext4_lblk_t written_blk, end_blk;

  written_blk = (offset + written) >> blkbits;
  end_blk = (offset + length) >> blkbits;
  if (written_blk < end_blk && ext4_can_truncate(inode))
   truncate = 1;
 }




 if (!truncate && inode->i_nlink &&
     !list_empty(&EXT4_I(inode)->i_orphan))
  ext4_orphan_del(handle, inode);
 ext4_journal_stop(handle);
 if (truncate) {
  ext4_truncate_failed_write(inode);
orphan_del:





  if (inode->i_nlink)
   ext4_orphan_del(((void*)0), inode);
 }
 return ret;
}
