
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_writecount; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct TYPE_2__ {int i_data_sem; int i_reserved_data_blocks; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_DA_ALLOC_CLOSE ;
 int FMODE_WRITE ;
 int atomic_read (int *) ;
 int down_write (int *) ;
 int ext4_alloc_da_blocks (struct inode*) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_htree_free_dir_info (scalar_t__) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 scalar_t__ is_dx (struct inode*) ;
 int up_write (int *) ;

__attribute__((used)) static int ext4_release_file(struct inode *inode, struct file *filp)
{
 if (ext4_test_inode_state(inode, EXT4_STATE_DA_ALLOC_CLOSE)) {
  ext4_alloc_da_blocks(inode);
  ext4_clear_inode_state(inode, EXT4_STATE_DA_ALLOC_CLOSE);
 }

 if ((filp->f_mode & FMODE_WRITE) &&
   (atomic_read(&inode->i_writecount) == 1) &&
          !EXT4_I(inode)->i_reserved_data_blocks)
 {
  down_write(&EXT4_I(inode)->i_data_sem);
  ext4_discard_preallocations(inode);
  up_write(&EXT4_I(inode)->i_data_sem);
 }
 if (is_dx(inode) && filp->private_data)
  ext4_htree_free_dir_info(filp->private_data);

 return 0;
}
