
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_filp; } ;
struct inode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int ML_ERROR ;
 struct inode* file_inode (int ) ;
 int mlog_ratelimited (int ,char*,long long) ;
 int ocfs2_dio_end_io_write (struct inode*,void*,int ,scalar_t__) ;
 int ocfs2_dio_free_write_ctx (struct inode*,void*) ;
 int ocfs2_iocb_clear_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_is_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_rw_locked_level (struct kiocb*) ;
 int ocfs2_rw_unlock (struct inode*,int) ;

__attribute__((used)) static int ocfs2_dio_end_io(struct kiocb *iocb,
       loff_t offset,
       ssize_t bytes,
       void *private)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 int level;
 int ret = 0;


 BUG_ON(!ocfs2_iocb_is_rw_locked(iocb));

 if (bytes <= 0)
  mlog_ratelimited(ML_ERROR, "Direct IO failed, bytes = %lld",
     (long long)bytes);
 if (private) {
  if (bytes > 0)
   ret = ocfs2_dio_end_io_write(inode, private, offset,
           bytes);
  else
   ocfs2_dio_free_write_ctx(inode, private);
 }

 ocfs2_iocb_clear_rw_locked(iocb);

 level = ocfs2_iocb_rw_locked_level(iocb);
 ocfs2_rw_unlock(inode, level);
 return ret;
}
