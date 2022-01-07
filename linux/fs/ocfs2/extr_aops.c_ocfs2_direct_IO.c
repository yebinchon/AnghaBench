
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {scalar_t__ count; } ;
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef int get_block_t ;
struct TYPE_6__ {int ip_dyn_features; } ;
struct TYPE_5__ {int s_bdev; } ;
struct TYPE_4__ {struct inode* host; } ;


 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 struct ocfs2_super* OCFS2_SB (TYPE_2__*) ;
 scalar_t__ READ ;
 int __blockdev_direct_IO (struct kiocb*,struct inode*,int ,struct iov_iter*,int *,int ,int *,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 int ocfs2_dio_end_io ;
 int * ocfs2_dio_wr_get_block ;
 int * ocfs2_lock_get_block ;
 int ocfs2_supports_append_dio (struct ocfs2_super*) ;

__attribute__((used)) static ssize_t ocfs2_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 get_block_t *get_block;





 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  return 0;


 if (iocb->ki_pos + iter->count > i_size_read(inode) &&
     !ocfs2_supports_append_dio(osb))
  return 0;

 if (iov_iter_rw(iter) == READ)
  get_block = ocfs2_lock_get_block;
 else
  get_block = ocfs2_dio_wr_get_block;

 return __blockdev_direct_IO(iocb, inode, inode->i_sb->s_bdev,
        iter, get_block,
        ocfs2_dio_end_io, ((void*)0), 0);
}
