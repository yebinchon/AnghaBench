
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nfs; } ;
struct msdos_sb_info {int dir_hash_lock; struct hlist_head* dir_hashtable; TYPE_1__ options; int inode_hash_lock; struct hlist_head* inode_hashtable; } ;
struct inode {scalar_t__ i_ino; int i_mode; int i_sb; } ;
struct hlist_head {int dummy; } ;
typedef int loff_t ;
struct TYPE_4__ {int i_dir_hash; int i_logstart; int i_fat_hash; int i_pos; } ;


 TYPE_2__* MSDOS_I (struct inode*) ;
 scalar_t__ MSDOS_ROOT_INO ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int fat_dir_hash (int ) ;
 int fat_hash (int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fat_attach(struct inode *inode, loff_t i_pos)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);

 if (inode->i_ino != MSDOS_ROOT_INO) {
  struct hlist_head *head = sbi->inode_hashtable
       + fat_hash(i_pos);

  spin_lock(&sbi->inode_hash_lock);
  MSDOS_I(inode)->i_pos = i_pos;
  hlist_add_head(&MSDOS_I(inode)->i_fat_hash, head);
  spin_unlock(&sbi->inode_hash_lock);
 }





 if (S_ISDIR(inode->i_mode) && sbi->options.nfs) {
  struct hlist_head *d_head = sbi->dir_hashtable;
  d_head += fat_dir_hash(MSDOS_I(inode)->i_logstart);

  spin_lock(&sbi->dir_hash_lock);
  hlist_add_head(&MSDOS_I(inode)->i_dir_hash, d_head);
  spin_unlock(&sbi->dir_hash_lock);
 }
}
