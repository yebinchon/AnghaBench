
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_pos; int ki_filp; } ;
struct iomap_dio_ops {scalar_t__ (* end_io ) (struct kiocb*,scalar_t__,scalar_t__,int) ;} ;
struct iomap_dio {scalar_t__ error; scalar_t__ size; int flags; scalar_t__ i_size; struct kiocb* iocb; struct iomap_dio_ops* dops; } ;
struct inode {TYPE_1__* i_mapping; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ nrpages; } ;


 int IOMAP_DIO_NEED_SYNC ;
 int IOMAP_DIO_WRITE ;
 int PAGE_SHIFT ;
 int dio_warn_stale_pagecache (int ) ;
 struct inode* file_inode (int ) ;
 scalar_t__ generic_write_sync (struct kiocb*,scalar_t__) ;
 int inode_dio_end (struct inode*) ;
 int invalidate_inode_pages2_range (TYPE_1__*,int,int) ;
 int kfree (struct iomap_dio*) ;
 scalar_t__ likely (int) ;
 scalar_t__ stub1 (struct kiocb*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static ssize_t iomap_dio_complete(struct iomap_dio *dio)
{
 const struct iomap_dio_ops *dops = dio->dops;
 struct kiocb *iocb = dio->iocb;
 struct inode *inode = file_inode(iocb->ki_filp);
 loff_t offset = iocb->ki_pos;
 ssize_t ret = dio->error;

 if (dops && dops->end_io)
  ret = dops->end_io(iocb, dio->size, ret, dio->flags);

 if (likely(!ret)) {
  ret = dio->size;

  if (offset + ret > dio->i_size &&
      !(dio->flags & IOMAP_DIO_WRITE))
   ret = dio->i_size - offset;
  iocb->ki_pos += ret;
 }
 if (!dio->error &&
     (dio->flags & IOMAP_DIO_WRITE) && inode->i_mapping->nrpages) {
  int err;
  err = invalidate_inode_pages2_range(inode->i_mapping,
    offset >> PAGE_SHIFT,
    (offset + dio->size - 1) >> PAGE_SHIFT);
  if (err)
   dio_warn_stale_pagecache(iocb->ki_filp);
 }





 if (ret > 0 && (dio->flags & IOMAP_DIO_NEED_SYNC))
  ret = generic_write_sync(iocb, ret);

 inode_dio_end(file_inode(iocb->ki_filp));
 kfree(dio);

 return ret;
}
