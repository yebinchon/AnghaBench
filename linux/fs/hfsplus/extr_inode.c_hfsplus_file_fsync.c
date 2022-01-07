
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct inode {TYPE_9__* i_sb; } ;
struct hfsplus_sb_info {int flags; TYPE_8__* alloc_file; TYPE_7__* attr_tree; TYPE_5__* ext_tree; TYPE_3__* cat_tree; } ;
struct hfsplus_inode_info {int flags; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_18__ {int s_bdev; } ;
struct TYPE_17__ {int i_mapping; } ;
struct TYPE_16__ {TYPE_6__* inode; } ;
struct TYPE_15__ {int i_mapping; } ;
struct TYPE_14__ {TYPE_4__* inode; } ;
struct TYPE_13__ {int i_mapping; } ;
struct TYPE_12__ {TYPE_2__* inode; } ;
struct TYPE_11__ {int i_mapping; } ;
struct TYPE_10__ {struct inode* host; } ;


 int GFP_KERNEL ;
 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 int HFSPLUS_I_ALLOC_DIRTY ;
 int HFSPLUS_I_ATTR_DIRTY ;
 int HFSPLUS_I_CAT_DIRTY ;
 int HFSPLUS_I_EXT_DIRTY ;
 struct hfsplus_sb_info* HFSPLUS_SB (TYPE_9__*) ;
 int HFSPLUS_SB_NOBARRIER ;
 int blkdev_issue_flush (int ,int ,int *) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int filemap_write_and_wait (int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int pr_err (char*) ;
 int sync_inode_metadata (struct inode*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int hfsplus_file_fsync(struct file *file, loff_t start, loff_t end,
         int datasync)
{
 struct inode *inode = file->f_mapping->host;
 struct hfsplus_inode_info *hip = HFSPLUS_I(inode);
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(inode->i_sb);
 int error = 0, error2;

 error = file_write_and_wait_range(file, start, end);
 if (error)
  return error;
 inode_lock(inode);




 sync_inode_metadata(inode, 1);




 if (test_and_clear_bit(HFSPLUS_I_CAT_DIRTY, &hip->flags))
  error = filemap_write_and_wait(sbi->cat_tree->inode->i_mapping);

 if (test_and_clear_bit(HFSPLUS_I_EXT_DIRTY, &hip->flags)) {
  error2 =
   filemap_write_and_wait(sbi->ext_tree->inode->i_mapping);
  if (!error)
   error = error2;
 }

 if (test_and_clear_bit(HFSPLUS_I_ATTR_DIRTY, &hip->flags)) {
  if (sbi->attr_tree) {
   error2 =
    filemap_write_and_wait(
         sbi->attr_tree->inode->i_mapping);
   if (!error)
    error = error2;
  } else {
   pr_err("sync non-existent attributes tree\n");
  }
 }

 if (test_and_clear_bit(HFSPLUS_I_ALLOC_DIRTY, &hip->flags)) {
  error2 = filemap_write_and_wait(sbi->alloc_file->i_mapping);
  if (!error)
   error = error2;
 }

 if (!test_bit(HFSPLUS_SB_NOBARRIER, &sbi->flags))
  blkdev_issue_flush(inode->i_sb->s_bdev, GFP_KERNEL, ((void*)0));

 inode_unlock(inode);

 return error;
}
