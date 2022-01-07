
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nfs; } ;
struct msdos_sb_info {int dir_hash_lock; TYPE_1__ options; int inode_hash_lock; } ;
struct inode {int i_mode; int i_sb; } ;
struct TYPE_4__ {int i_dir_hash; int i_fat_hash; scalar_t__ i_pos; } ;


 TYPE_2__* MSDOS_I (struct inode*) ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int hlist_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fat_detach(struct inode *inode)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 spin_lock(&sbi->inode_hash_lock);
 MSDOS_I(inode)->i_pos = 0;
 hlist_del_init(&MSDOS_I(inode)->i_fat_hash);
 spin_unlock(&sbi->inode_hash_lock);

 if (S_ISDIR(inode->i_mode) && sbi->options.nfs) {
  spin_lock(&sbi->dir_hash_lock);
  hlist_del_init(&MSDOS_I(inode)->i_dir_hash);
  spin_unlock(&sbi->dir_hash_lock);
 }
}
