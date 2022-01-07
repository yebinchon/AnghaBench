
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fd {TYPE_2__* file; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_7__ {int i_mode; } ;
struct TYPE_6__ {int f_mode; TYPE_1__* f_mapping; } ;
struct TYPE_5__ {int a_ops; } ;


 int EBADF ;
 int EINVAL ;
 int FMODE_READ ;
 int POSIX_FADV_WILLNEED ;
 int S_ISREG (int ) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 TYPE_3__* file_inode (TYPE_2__*) ;
 int vfs_fadvise (TYPE_2__*,int ,size_t,int ) ;

ssize_t ksys_readahead(int fd, loff_t offset, size_t count)
{
 ssize_t ret;
 struct fd f;

 ret = -EBADF;
 f = fdget(fd);
 if (!f.file || !(f.file->f_mode & FMODE_READ))
  goto out;






 ret = -EINVAL;
 if (!f.file->f_mapping || !f.file->f_mapping->a_ops ||
     !S_ISREG(file_inode(f.file)->i_mode))
  goto out;

 ret = vfs_fadvise(f.file, offset, count, POSIX_FADV_WILLNEED);
out:
 fdput(f);
 return ret;
}
