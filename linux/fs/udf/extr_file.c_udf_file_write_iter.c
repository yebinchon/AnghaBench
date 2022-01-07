
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_inode_info {scalar_t__ i_alloc_type; int i_data_sem; int i_lenAlloc; } ;
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;


 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 scalar_t__ __generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 int down_write (int *) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ generic_write_checks (struct kiocb*,struct iov_iter*) ;
 scalar_t__ generic_write_sync (struct kiocb*,scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int mark_inode_dirty (struct inode*) ;
 int max (scalar_t__,int ) ;
 int udf_debug (char*,int) ;
 int udf_expand_file_adinicb (struct inode*) ;
 scalar_t__ udf_file_entry_alloc_offset (struct inode*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t udf_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 ssize_t retval;
 struct file *file = iocb->ki_filp;
 struct inode *inode = file_inode(file);
 struct udf_inode_info *iinfo = UDF_I(inode);
 int err;

 inode_lock(inode);

 retval = generic_write_checks(iocb, from);
 if (retval <= 0)
  goto out;

 down_write(&iinfo->i_data_sem);
 if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
  loff_t end = iocb->ki_pos + iov_iter_count(from);

  if (inode->i_sb->s_blocksize <
    (udf_file_entry_alloc_offset(inode) + end)) {
   err = udf_expand_file_adinicb(inode);
   if (err) {
    inode_unlock(inode);
    udf_debug("udf_expand_adinicb: err=%d\n", err);
    return err;
   }
  } else {
   iinfo->i_lenAlloc = max(end, inode->i_size);
   up_write(&iinfo->i_data_sem);
  }
 } else
  up_write(&iinfo->i_data_sem);

 retval = __generic_file_write_iter(iocb, from);
out:
 inode_unlock(inode);

 if (retval > 0) {
  mark_inode_dirty(inode);
  retval = generic_write_sync(iocb, retval);
 }

 return retval;
}
