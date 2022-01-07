
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct orangefs_read_options {int blksiz; } ;
struct kiocb {TYPE_4__* ki_filp; } ;
struct iov_iter {int count; } ;
typedef int ssize_t ;
struct TYPE_7__ {struct orangefs_read_options* private_data; } ;
struct TYPE_6__ {int i_rwsem; } ;
struct TYPE_5__ {int reads; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int down_read (int *) ;
 TYPE_2__* file_inode (TYPE_4__*) ;
 int generic_file_read_iter (struct kiocb*,struct iov_iter*) ;
 struct orangefs_read_options* kmalloc (int,int ) ;
 int orangefs_revalidate_mapping (TYPE_2__*) ;
 TYPE_1__ orangefs_stats ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t orangefs_file_read_iter(struct kiocb *iocb,
    struct iov_iter *iter)
{
 int ret;
 struct orangefs_read_options *ro;

 orangefs_stats.reads++;






 if (!iocb->ki_filp->private_data) {
  iocb->ki_filp->private_data = kmalloc(sizeof *ro, GFP_KERNEL);
  if (!iocb->ki_filp->private_data)
   return(ENOMEM);
  ro = iocb->ki_filp->private_data;
  ro->blksiz = iter->count;
 }

 down_read(&file_inode(iocb->ki_filp)->i_rwsem);
 ret = orangefs_revalidate_mapping(file_inode(iocb->ki_filp));
 if (ret)
  goto out;

 ret = generic_file_read_iter(iocb, iter);
out:
 up_read(&file_inode(iocb->ki_filp)->i_rwsem);
 return ret;
}
