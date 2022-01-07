
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_inode_lock; int ns_dirty_files; int ns_ndirtyblks; } ;
struct nilfs_inode_info {int i_state; int i_dirty; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct the_nilfs* s_fs_info; } ;


 int EINVAL ;
 int KERN_WARNING ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BUSY ;
 int NILFS_I_DIRTY ;
 int NILFS_I_QUEUED ;
 int atomic_add (unsigned int,int *) ;
 int * igrab (struct inode*) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int nilfs_msg (TYPE_1__*,int ,char*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int nilfs_set_file_dirty(struct inode *inode, unsigned int nr_dirty)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct the_nilfs *nilfs = inode->i_sb->s_fs_info;

 atomic_add(nr_dirty, &nilfs->ns_ndirtyblks);

 if (test_and_set_bit(NILFS_I_DIRTY, &ii->i_state))
  return 0;

 spin_lock(&nilfs->ns_inode_lock);
 if (!test_bit(NILFS_I_QUEUED, &ii->i_state) &&
     !test_bit(NILFS_I_BUSY, &ii->i_state)) {




  if (list_empty(&ii->i_dirty) && igrab(inode) == ((void*)0)) {




   nilfs_msg(inode->i_sb, KERN_WARNING,
      "cannot set file dirty (ino=%lu): the file is being freed",
      inode->i_ino);
   spin_unlock(&nilfs->ns_inode_lock);
   return -EINVAL;



  }
  list_move_tail(&ii->i_dirty, &nilfs->ns_dirty_files);
  set_bit(NILFS_I_QUEUED, &ii->i_state);
 }
 spin_unlock(&nilfs->ns_inode_lock);
 return 0;
}
