
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_io_priv {scalar_t__ err; scalar_t__ bytes; scalar_t__ size; scalar_t__ write; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EIO ;

__attribute__((used)) static ssize_t fuse_get_res_by_io(struct fuse_io_priv *io)
{
 if (io->err)
  return io->err;

 if (io->bytes >= 0 && io->write)
  return -EIO;

 return io->bytes < 0 ? io->size : io->bytes;
}
