
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int s_bdev; } ;
struct hfsplus_vh {void* file_count; void* folder_count; void* next_cnid; void* free_blocks; } ;
struct hfsplus_sb_info {int flags; int vh_mutex; int alloc_mutex; int s_backup_vhdr_buf; scalar_t__ sect_count; scalar_t__ part_start; int s_vhdr_buf; struct hfsplus_vh* s_vhdr; int s_backup_vhdr; int file_count; int folder_count; int next_cnid; int free_blocks; TYPE_7__* alloc_file; TYPE_6__* attr_tree; TYPE_4__* ext_tree; TYPE_2__* cat_tree; } ;
struct TYPE_14__ {int i_mapping; } ;
struct TYPE_13__ {TYPE_5__* inode; } ;
struct TYPE_12__ {int i_mapping; } ;
struct TYPE_11__ {TYPE_3__* inode; } ;
struct TYPE_10__ {int i_mapping; } ;
struct TYPE_9__ {TYPE_1__* inode; } ;
struct TYPE_8__ {int i_mapping; } ;


 int GFP_KERNEL ;
 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 int HFSPLUS_SB_NOBARRIER ;
 int HFSPLUS_SB_WRITEBACKUP ;
 scalar_t__ HFSPLUS_VOLHEAD_SECTOR ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int SUPER ;
 int blkdev_issue_flush (int ,int ,int *) ;
 void* cpu_to_be32 (int ) ;
 int filemap_write_and_wait (int ) ;
 int hfs_dbg (int ,char*) ;
 int hfsplus_submit_bio (struct super_block*,scalar_t__,int ,int *,int ,int ) ;
 int memcpy (int ,struct hfsplus_vh*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hfsplus_sync_fs(struct super_block *sb, int wait)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);
 struct hfsplus_vh *vhdr = sbi->s_vhdr;
 int write_backup = 0;
 int error, error2;

 if (!wait)
  return 0;

 hfs_dbg(SUPER, "hfsplus_sync_fs\n");
 error = filemap_write_and_wait(sbi->cat_tree->inode->i_mapping);
 error2 = filemap_write_and_wait(sbi->ext_tree->inode->i_mapping);
 if (!error)
  error = error2;
 if (sbi->attr_tree) {
  error2 =
      filemap_write_and_wait(sbi->attr_tree->inode->i_mapping);
  if (!error)
   error = error2;
 }
 error2 = filemap_write_and_wait(sbi->alloc_file->i_mapping);
 if (!error)
  error = error2;

 mutex_lock(&sbi->vh_mutex);
 mutex_lock(&sbi->alloc_mutex);
 vhdr->free_blocks = cpu_to_be32(sbi->free_blocks);
 vhdr->next_cnid = cpu_to_be32(sbi->next_cnid);
 vhdr->folder_count = cpu_to_be32(sbi->folder_count);
 vhdr->file_count = cpu_to_be32(sbi->file_count);

 if (test_and_clear_bit(HFSPLUS_SB_WRITEBACKUP, &sbi->flags)) {
  memcpy(sbi->s_backup_vhdr, sbi->s_vhdr, sizeof(*sbi->s_vhdr));
  write_backup = 1;
 }

 error2 = hfsplus_submit_bio(sb,
       sbi->part_start + HFSPLUS_VOLHEAD_SECTOR,
       sbi->s_vhdr_buf, ((void*)0), REQ_OP_WRITE,
       REQ_SYNC);
 if (!error)
  error = error2;
 if (!write_backup)
  goto out;

 error2 = hfsplus_submit_bio(sb,
      sbi->part_start + sbi->sect_count - 2,
      sbi->s_backup_vhdr_buf, ((void*)0), REQ_OP_WRITE,
      REQ_SYNC);
 if (!error)
  error2 = error;
out:
 mutex_unlock(&sbi->alloc_mutex);
 mutex_unlock(&sbi->vh_mutex);

 if (!test_bit(HFSPLUS_SB_NOBARRIER, &sbi->flags))
  blkdev_issue_flush(sb->s_bdev, GFP_KERNEL, ((void*)0));

 return error;
}
