
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_state; scalar_t__ i_ino; int i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int opencnt; int * rsrc_inode; scalar_t__ extent_state; scalar_t__ flags; int extents_lock; int open_dir_lock; int open_dir_list; } ;
struct TYPE_3__ {int cat_tree; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ HFSPLUS_FIRSTUSER_CNID ;
 TYPE_2__* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_ROOT_CNID ;
 TYPE_1__* HFSPLUS_SB (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int I_NEW ;
 int atomic_set (int *,int ) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfsplus_cat_read_inode (struct inode*,struct hfs_find_data*) ;
 int hfsplus_find_cat (int ,scalar_t__,struct hfs_find_data*) ;
 int hfsplus_system_read_inode (struct inode*) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int unlock_new_inode (struct inode*) ;

struct inode *hfsplus_iget(struct super_block *sb, unsigned long ino)
{
 struct hfs_find_data fd;
 struct inode *inode;
 int err;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 INIT_LIST_HEAD(&HFSPLUS_I(inode)->open_dir_list);
 spin_lock_init(&HFSPLUS_I(inode)->open_dir_lock);
 mutex_init(&HFSPLUS_I(inode)->extents_lock);
 HFSPLUS_I(inode)->flags = 0;
 HFSPLUS_I(inode)->extent_state = 0;
 HFSPLUS_I(inode)->rsrc_inode = ((void*)0);
 atomic_set(&HFSPLUS_I(inode)->opencnt, 0);

 if (inode->i_ino >= HFSPLUS_FIRSTUSER_CNID ||
     inode->i_ino == HFSPLUS_ROOT_CNID) {
  err = hfs_find_init(HFSPLUS_SB(inode->i_sb)->cat_tree, &fd);
  if (!err) {
   err = hfsplus_find_cat(inode->i_sb, inode->i_ino, &fd);
   if (!err)
    err = hfsplus_cat_read_inode(inode, &fd);
   hfs_find_exit(&fd);
  }
 } else {
  err = hfsplus_system_read_inode(inode);
 }

 if (err) {
  iget_failed(inode);
  return ERR_PTR(err);
 }

 unlock_new_inode(inode);
 return inode;
}
