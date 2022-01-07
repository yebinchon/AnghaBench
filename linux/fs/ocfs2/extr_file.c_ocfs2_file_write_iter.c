
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ocfs2_super {int s_mount_opt; TYPE_3__* journal; } ;
struct kiocb {scalar_t__ ki_pos; int ki_flags; int ki_complete; struct file* ki_filp; } ;
struct iov_iter {scalar_t__ nr_segs; } ;
struct inode {int i_sb; } ;
struct TYPE_7__ {TYPE_4__* dentry; } ;
struct file {int f_flags; int f_mapping; TYPE_2__ f_path; } ;
typedef int ssize_t ;
struct TYPE_10__ {scalar_t__ ip_blkno; } ;
struct TYPE_6__ {int name; int len; } ;
struct TYPE_9__ {TYPE_1__ d_name; } ;
struct TYPE_8__ {int j_journal; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EIOCBQUEUED ;
 int EOPNOTSUPP ;
 int IOCB_DIRECT ;
 int IOCB_NOWAIT ;
 scalar_t__ IS_SYNC (struct inode*) ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 int OCFS2_MOUNT_COHERENCY_BUFFERED ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int O_DSYNC ;
 int __generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 struct inode* file_inode (struct file*) ;
 int filemap_fdatawait_range (int ,scalar_t__,scalar_t__) ;
 int filemap_fdatawrite_range (int ,scalar_t__,scalar_t__) ;
 int generic_write_checks (struct kiocb*,struct iov_iter*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_trylock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int is_sync_kiocb (struct kiocb*) ;
 int jbd2_journal_force_commit (int ) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock (struct inode*,int *,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_iocb_is_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_set_rw_locked (struct kiocb*,int) ;
 scalar_t__ ocfs2_is_io_unaligned (struct inode*,size_t,scalar_t__) ;
 int ocfs2_prepare_inode_for_write (struct file*,scalar_t__,size_t,int) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int ocfs2_try_inode_lock (struct inode*,int *,int) ;
 int ocfs2_try_rw_lock (struct inode*,int) ;
 int trace_ocfs2_file_write_iter (struct inode*,struct file*,TYPE_4__*,unsigned long long,int ,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;
 void* xchg (int *,void*) ;

__attribute__((used)) static ssize_t ocfs2_file_write_iter(struct kiocb *iocb,
        struct iov_iter *from)
{
 int rw_level;
 ssize_t written = 0;
 ssize_t ret;
 size_t count = iov_iter_count(from);
 struct file *file = iocb->ki_filp;
 struct inode *inode = file_inode(file);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 int full_coherency = !(osb->s_mount_opt &
          OCFS2_MOUNT_COHERENCY_BUFFERED);
 void *saved_ki_complete = ((void*)0);
 int append_write = ((iocb->ki_pos + count) >=
   i_size_read(inode) ? 1 : 0);
 int direct_io = iocb->ki_flags & IOCB_DIRECT ? 1 : 0;
 int nowait = iocb->ki_flags & IOCB_NOWAIT ? 1 : 0;

 trace_ocfs2_file_write_iter(inode, file, file->f_path.dentry,
  (unsigned long long)OCFS2_I(inode)->ip_blkno,
  file->f_path.dentry->d_name.len,
  file->f_path.dentry->d_name.name,
  (unsigned int)from->nr_segs);

 if (!direct_io && nowait)
  return -EOPNOTSUPP;

 if (count == 0)
  return 0;

 if (nowait) {
  if (!inode_trylock(inode))
   return -EAGAIN;
 } else
  inode_lock(inode);






 rw_level = (!direct_io || full_coherency || append_write);

 if (nowait)
  ret = ocfs2_try_rw_lock(inode, rw_level);
 else
  ret = ocfs2_rw_lock(inode, rw_level);
 if (ret < 0) {
  if (ret != -EAGAIN)
   mlog_errno(ret);
  goto out_mutex;
 }





 if (direct_io && full_coherency) {





  if (nowait)
   ret = ocfs2_try_inode_lock(inode, ((void*)0), 1);
  else
   ret = ocfs2_inode_lock(inode, ((void*)0), 1);
  if (ret < 0) {
   if (ret != -EAGAIN)
    mlog_errno(ret);
   goto out;
  }

  ocfs2_inode_unlock(inode, 1);
 }

 ret = generic_write_checks(iocb, from);
 if (ret <= 0) {
  if (ret)
   mlog_errno(ret);
  goto out;
 }
 count = ret;

 ret = ocfs2_prepare_inode_for_write(file, iocb->ki_pos, count, !nowait);
 if (ret < 0) {
  if (ret != -EAGAIN)
   mlog_errno(ret);
  goto out;
 }

 if (direct_io && !is_sync_kiocb(iocb) &&
     ocfs2_is_io_unaligned(inode, count, iocb->ki_pos)) {



  saved_ki_complete = xchg(&iocb->ki_complete, ((void*)0));
 }


 ocfs2_iocb_set_rw_locked(iocb, rw_level);

 written = __generic_file_write_iter(iocb, from);

 BUG_ON(written == -EIOCBQUEUED && !direct_io);
 if ((written == -EIOCBQUEUED) || (!ocfs2_iocb_is_rw_locked(iocb))) {
  rw_level = -1;
 }

 if (unlikely(written <= 0))
  goto out;

 if (((file->f_flags & O_DSYNC) && !direct_io) ||
     IS_SYNC(inode)) {
  ret = filemap_fdatawrite_range(file->f_mapping,
            iocb->ki_pos - written,
            iocb->ki_pos - 1);
  if (ret < 0)
   written = ret;

  if (!ret) {
   ret = jbd2_journal_force_commit(osb->journal->j_journal);
   if (ret < 0)
    written = ret;
  }

  if (!ret)
   ret = filemap_fdatawait_range(file->f_mapping,
            iocb->ki_pos - written,
            iocb->ki_pos - 1);
 }

out:
 if (saved_ki_complete)
  xchg(&iocb->ki_complete, saved_ki_complete);

 if (rw_level != -1)
  ocfs2_rw_unlock(inode, rw_level);

out_mutex:
 inode_unlock(inode);

 if (written)
  ret = written;
 return ret;
}
