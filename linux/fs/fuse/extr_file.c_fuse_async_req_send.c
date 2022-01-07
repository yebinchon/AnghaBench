
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fuse_io_priv {size_t size; int lock; int reqs; int refcnt; } ;
struct TYPE_4__ {int end; } ;
struct TYPE_3__ {TYPE_2__ args; } ;
struct fuse_io_args {TYPE_1__ ap; struct fuse_io_priv* io; } ;
struct fuse_conn {int dummy; } ;
typedef size_t ssize_t ;


 int GFP_KERNEL ;
 int fuse_aio_complete_req ;
 size_t fuse_simple_background (struct fuse_conn*,TYPE_2__*,int ) ;
 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t fuse_async_req_send(struct fuse_conn *fc,
       struct fuse_io_args *ia, size_t num_bytes)
{
 ssize_t err;
 struct fuse_io_priv *io = ia->io;

 spin_lock(&io->lock);
 kref_get(&io->refcnt);
 io->size += num_bytes;
 io->reqs++;
 spin_unlock(&io->lock);

 ia->ap.args.end = fuse_aio_complete_req;
 err = fuse_simple_background(fc, &ia->ap.args, GFP_KERNEL);

 return err ?: num_bytes;
}
