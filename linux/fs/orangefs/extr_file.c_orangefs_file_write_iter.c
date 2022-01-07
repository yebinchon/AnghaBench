
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {scalar_t__ ki_pos; int ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int writes; } ;


 int file_inode (int ) ;
 int generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 scalar_t__ i_size_read (int ) ;
 int orangefs_revalidate_mapping (int ) ;
 TYPE_1__ orangefs_stats ;

__attribute__((used)) static ssize_t orangefs_file_write_iter(struct kiocb *iocb,
    struct iov_iter *iter)
{
 int ret;
 orangefs_stats.writes++;

 if (iocb->ki_pos > i_size_read(file_inode(iocb->ki_filp))) {
  ret = orangefs_revalidate_mapping(file_inode(iocb->ki_filp));
  if (ret)
   return ret;
 }

 ret = generic_file_write_iter(iocb, iter);
 return ret;
}
