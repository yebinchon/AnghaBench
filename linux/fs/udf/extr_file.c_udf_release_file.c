
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_writecount; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int i_data_sem; } ;


 int FMODE_WRITE ;
 TYPE_1__* UDF_I (struct inode*) ;
 int atomic_read (int *) ;
 int down_write (int *) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int udf_discard_prealloc (struct inode*) ;
 int udf_truncate_tail_extent (struct inode*) ;
 int up_write (int *) ;

__attribute__((used)) static int udf_release_file(struct inode *inode, struct file *filp)
{
 if (filp->f_mode & FMODE_WRITE &&
     atomic_read(&inode->i_writecount) == 1) {




  inode_lock(inode);
  down_write(&UDF_I(inode)->i_data_sem);
  udf_discard_prealloc(inode);
  udf_truncate_tail_extent(inode);
  up_write(&UDF_I(inode)->i_data_sem);
  inode_unlock(inode);
 }
 return 0;
}
