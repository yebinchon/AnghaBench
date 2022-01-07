
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_dir_entry {int * name; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int nr_slots; int slot_off; struct buffer_head* bh; struct msdos_dir_entry* de; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int DELETED_FLAG ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int KERN_WARNING ;
 int S_ATIME ;
 int S_MTIME ;
 int __fat_remove_entries (struct inode*,int ,int) ;
 int brelse (struct buffer_head*) ;
 int fat_msg (struct super_block*,int ,char*) ;
 int fat_sync_inode (struct inode*) ;
 int fat_truncate_time (struct inode*,int *,int) ;
 int inode_inc_iversion (struct inode*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

int fat_remove_entries(struct inode *dir, struct fat_slot_info *sinfo)
{
 struct super_block *sb = dir->i_sb;
 struct msdos_dir_entry *de;
 struct buffer_head *bh;
 int err = 0, nr_slots;





 nr_slots = sinfo->nr_slots;
 de = sinfo->de;
 sinfo->de = ((void*)0);
 bh = sinfo->bh;
 sinfo->bh = ((void*)0);
 while (nr_slots && de >= (struct msdos_dir_entry *)bh->b_data) {
  de->name[0] = DELETED_FLAG;
  de--;
  nr_slots--;
 }
 mark_buffer_dirty_inode(bh, dir);
 if (IS_DIRSYNC(dir))
  err = sync_dirty_buffer(bh);
 brelse(bh);
 if (err)
  return err;
 inode_inc_iversion(dir);

 if (nr_slots) {





  err = __fat_remove_entries(dir, sinfo->slot_off, nr_slots);
  if (err) {
   fat_msg(sb, KERN_WARNING,
          "Couldn't remove the long name slots");
  }
 }

 fat_truncate_time(dir, ((void*)0), S_ATIME|S_MTIME);
 if (IS_DIRSYNC(dir))
  (void)fat_sync_inode(dir);
 else
  mark_inode_dirty(dir);

 return 0;
}
