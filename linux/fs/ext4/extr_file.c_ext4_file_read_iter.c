
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {int ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int i_sb; } ;


 int EIO ;
 int EXT4_SB (int ) ;
 scalar_t__ IS_DAX (TYPE_1__*) ;
 int ext4_dax_read_iter (struct kiocb*,struct iov_iter*) ;
 int ext4_forced_shutdown (int ) ;
 TYPE_1__* file_inode (int ) ;
 int generic_file_read_iter (struct kiocb*,struct iov_iter*) ;
 int iov_iter_count (struct iov_iter*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t ext4_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
{
 if (unlikely(ext4_forced_shutdown(EXT4_SB(file_inode(iocb->ki_filp)->i_sb))))
  return -EIO;

 if (!iov_iter_count(to))
  return 0;





 return generic_file_read_iter(iocb, to);
}
