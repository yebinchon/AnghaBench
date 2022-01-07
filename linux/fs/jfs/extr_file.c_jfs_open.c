
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jfs_sb_info {TYPE_1__* bmap; } ;
struct jfs_inode_info {int active_ag; int ag_lock; int ixpxd; } ;
struct inode {scalar_t__ i_size; int i_sb; int i_mode; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int * db_active; } ;


 int BLKTOAG (int ,struct jfs_sb_info*) ;
 int FMODE_WRITE ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int addressPXD (int *) ;
 int atomic_inc (int *) ;
 int dquot_file_open (struct inode*,struct file*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int jfs_open(struct inode *inode, struct file *file)
{
 int rc;

 if ((rc = dquot_file_open(inode, file)))
  return rc;
 if (S_ISREG(inode->i_mode) && file->f_mode & FMODE_WRITE &&
     (inode->i_size == 0)) {
  struct jfs_inode_info *ji = JFS_IP(inode);
  spin_lock_irq(&ji->ag_lock);
  if (ji->active_ag == -1) {
   struct jfs_sb_info *jfs_sb = JFS_SBI(inode->i_sb);
   ji->active_ag = BLKTOAG(addressPXD(&ji->ixpxd), jfs_sb);
   atomic_inc(&jfs_sb->bmap->db_active[ji->active_ag]);
  }
  spin_unlock_irq(&ji->ag_lock);
 }

 return 0;
}
