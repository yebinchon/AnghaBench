
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct fuse_write_in {int lock_owner; int write_flags; int flags; } ;
struct TYPE_7__ {size_t size; } ;
struct TYPE_8__ {TYPE_3__ out; struct fuse_write_in in; } ;
struct TYPE_6__ {int args; } ;
struct fuse_io_args {TYPE_4__ write; TYPE_2__ ap; TYPE_1__* io; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int * fl_owner_t ;
struct TYPE_5__ {scalar_t__ async; struct kiocb* iocb; } ;


 int EIO ;
 int FUSE_WRITE_LOCKOWNER ;
 int fuse_async_req_send (struct fuse_conn*,struct fuse_io_args*,size_t) ;
 int fuse_lock_owner_id (struct fuse_conn*,int *) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;
 int fuse_write_args_fill (struct fuse_io_args*,struct fuse_file*,int ,size_t) ;
 int fuse_write_flags (struct kiocb*) ;

__attribute__((used)) static ssize_t fuse_send_write(struct fuse_io_args *ia, loff_t pos,
          size_t count, fl_owner_t owner)
{
 struct kiocb *iocb = ia->io->iocb;
 struct file *file = iocb->ki_filp;
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 struct fuse_write_in *inarg = &ia->write.in;
 ssize_t err;

 fuse_write_args_fill(ia, ff, pos, count);
 inarg->flags = fuse_write_flags(iocb);
 if (owner != ((void*)0)) {
  inarg->write_flags |= FUSE_WRITE_LOCKOWNER;
  inarg->lock_owner = fuse_lock_owner_id(fc, owner);
 }

 if (ia->io->async)
  return fuse_async_req_send(fc, ia, count);

 err = fuse_simple_request(fc, &ia->ap.args);
 if (!err && ia->write.out.size > count)
  err = -EIO;

 return err ?: ia->write.out.size;
}
