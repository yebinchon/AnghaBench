
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ __generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 scalar_t__ generic_write_checks (struct kiocb*,struct iov_iter*) ;
 scalar_t__ generic_write_sync (struct kiocb*,scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

ssize_t generic_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 ssize_t ret;

 inode_lock(inode);
 ret = generic_write_checks(iocb, from);
 if (ret > 0)
  ret = __generic_file_write_iter(iocb, from);
 inode_unlock(inode);

 if (ret > 0)
  ret = generic_write_sync(iocb, ret);
 return ret;
}
