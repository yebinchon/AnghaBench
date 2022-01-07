
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct block_device {char* bd_queue; TYPE_1__* bd_disk; } ;
typedef int ssize_t ;
typedef int get_block_t ;
typedef int dio_submit_t ;
typedef int dio_iodone_t ;
struct TYPE_2__ {char part_tbl; } ;


 int SMP_CACHE_BYTES ;
 int do_blockdev_direct_IO (struct kiocb*,struct inode*,struct block_device*,struct iov_iter*,int ,int ,int ,int) ;
 int prefetch (char*) ;

ssize_t __blockdev_direct_IO(struct kiocb *iocb, struct inode *inode,
        struct block_device *bdev, struct iov_iter *iter,
        get_block_t get_block,
        dio_iodone_t end_io, dio_submit_t submit_io,
        int flags)
{
 prefetch(&bdev->bd_disk->part_tbl);
 prefetch(bdev->bd_queue);
 prefetch((char *)bdev->bd_queue + SMP_CACHE_BYTES);

 return do_blockdev_direct_IO(iocb, inode, bdev, iter, get_block,
         end_io, submit_io, flags);
}
