
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int args; } ;
struct TYPE_6__ {int lock_owner; int read_flags; } ;
struct TYPE_7__ {TYPE_1__ in; } ;
struct fuse_io_args {TYPE_3__ ap; TYPE_5__* io; TYPE_2__ read; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int * fl_owner_t ;
struct TYPE_10__ {scalar_t__ async; TYPE_4__* iocb; } ;
struct TYPE_9__ {struct file* ki_filp; } ;


 int FUSE_READ ;
 int FUSE_READ_LOCKOWNER ;
 int fuse_async_req_send (struct fuse_conn*,struct fuse_io_args*,size_t) ;
 int fuse_lock_owner_id (struct fuse_conn*,int *) ;
 int fuse_read_args_fill (struct fuse_io_args*,struct file*,int ,size_t,int ) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;

__attribute__((used)) static ssize_t fuse_send_read(struct fuse_io_args *ia, loff_t pos, size_t count,
         fl_owner_t owner)
{
 struct file *file = ia->io->iocb->ki_filp;
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;

 fuse_read_args_fill(ia, file, pos, count, FUSE_READ);
 if (owner != ((void*)0)) {
  ia->read.in.read_flags |= FUSE_READ_LOCKOWNER;
  ia->read.in.lock_owner = fuse_lock_owner_id(fc, owner);
 }

 if (ia->io->async)
  return fuse_async_req_send(fc, ia, count);

 return fuse_simple_request(fc, &ia->ap.args);
}
