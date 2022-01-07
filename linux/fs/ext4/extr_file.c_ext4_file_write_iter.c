
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; int* private; int ki_pos; int ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_sb; } ;
typedef int ssize_t ;


 int EAGAIN ;
 int EIO ;
 int EIOCBQUEUED ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_SB (int ) ;
 int IOCB_DIRECT ;
 int IOCB_NOWAIT ;
 scalar_t__ IS_DAX (struct inode*) ;
 int __generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 int ext4_dax_write_iter (struct kiocb*,struct iov_iter*) ;
 int ext4_forced_shutdown (int ) ;
 scalar_t__ ext4_overwrite_io (struct inode*,int ,int ) ;
 scalar_t__ ext4_should_dioread_nolock (struct inode*) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 scalar_t__ ext4_unaligned_aio (struct inode*,struct iov_iter*,int ) ;
 int ext4_unwritten_wait (struct inode*) ;
 int ext4_write_checks (struct kiocb*,struct iov_iter*) ;
 struct inode* file_inode (int ) ;
 int generic_write_sync (struct kiocb*,int ) ;
 int inode_lock (struct inode*) ;
 int inode_trylock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iov_iter_count (struct iov_iter*) ;
 int is_sync_kiocb (struct kiocb*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t
ext4_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 int o_direct = iocb->ki_flags & IOCB_DIRECT;
 int unaligned_aio = 0;
 int overwrite = 0;
 ssize_t ret;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;






 if (!inode_trylock(inode)) {
  if (iocb->ki_flags & IOCB_NOWAIT)
   return -EAGAIN;
  inode_lock(inode);
 }

 ret = ext4_write_checks(iocb, from);
 if (ret <= 0)
  goto out;






 if (o_direct && ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS) &&
     !is_sync_kiocb(iocb) &&
     ext4_unaligned_aio(inode, from, iocb->ki_pos)) {
  unaligned_aio = 1;
  ext4_unwritten_wait(inode);
 }

 iocb->private = &overwrite;

 if (o_direct && !unaligned_aio) {
  if (ext4_overwrite_io(inode, iocb->ki_pos, iov_iter_count(from))) {
   if (ext4_should_dioread_nolock(inode))
    overwrite = 1;
  } else if (iocb->ki_flags & IOCB_NOWAIT) {
   ret = -EAGAIN;
   goto out;
  }
 }

 ret = __generic_file_write_iter(iocb, from);





 if (ret == -EIOCBQUEUED && unaligned_aio)
  ext4_unwritten_wait(inode);
 inode_unlock(inode);

 if (ret > 0)
  ret = generic_write_sync(iocb, ret);

 return ret;

out:
 inode_unlock(inode);
 return ret;
}
