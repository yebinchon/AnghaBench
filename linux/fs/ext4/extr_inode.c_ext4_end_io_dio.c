
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kiocb {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_7__ {int size; int offset; TYPE_1__* inode; } ;
typedef TYPE_2__ ext4_io_end_t ;
struct TYPE_6__ {int i_ino; } ;


 int ext4_clear_io_unwritten_flag (TYPE_2__*) ;
 int ext4_put_io_end (TYPE_2__*) ;
 int ext_debug (char*,TYPE_2__*,int ,struct kiocb*,int ,int ) ;

__attribute__((used)) static int ext4_end_io_dio(struct kiocb *iocb, loff_t offset,
       ssize_t size, void *private)
{
        ext4_io_end_t *io_end = private;


 if (!io_end)
  return 0;

 ext_debug("ext4_end_io_dio(): io_end 0x%p "
    "for inode %lu, iocb 0x%p, offset %llu, size %zd\n",
    io_end, io_end->inode->i_ino, iocb, offset, size);





 if (size <= 0) {
  ext4_clear_io_unwritten_flag(io_end);
  size = 0;
 }
 io_end->offset = offset;
 io_end->size = size;
 ext4_put_io_end(io_end);

 return 0;
}
