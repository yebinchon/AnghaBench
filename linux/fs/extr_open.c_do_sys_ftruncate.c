
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct fd {TYPE_2__* file; } ;
struct dentry {struct inode* d_inode; } ;
typedef int loff_t ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct TYPE_6__ {int f_flags; int f_mode; TYPE_1__ f_path; } ;


 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int EBADF ;
 int EINVAL ;
 int EPERM ;
 int FMODE_WRITE ;
 scalar_t__ IS_APPEND (int ) ;
 int MAX_NON_LFS ;
 int O_LARGEFILE ;
 int S_ISREG (int ) ;
 int do_truncate (struct dentry*,int ,int,TYPE_2__*) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 int file_inode (TYPE_2__*) ;
 int locks_verify_truncate (struct inode*,TYPE_2__*,int ) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;
 int security_path_truncate (TYPE_1__*) ;

long do_sys_ftruncate(unsigned int fd, loff_t length, int small)
{
 struct inode *inode;
 struct dentry *dentry;
 struct fd f;
 int error;

 error = -EINVAL;
 if (length < 0)
  goto out;
 error = -EBADF;
 f = fdget(fd);
 if (!f.file)
  goto out;


 if (f.file->f_flags & O_LARGEFILE)
  small = 0;

 dentry = f.file->f_path.dentry;
 inode = dentry->d_inode;
 error = -EINVAL;
 if (!S_ISREG(inode->i_mode) || !(f.file->f_mode & FMODE_WRITE))
  goto out_putf;

 error = -EINVAL;

 if (small && length > MAX_NON_LFS)
  goto out_putf;

 error = -EPERM;

 if (IS_APPEND(file_inode(f.file)))
  goto out_putf;

 sb_start_write(inode->i_sb);
 error = locks_verify_truncate(inode, f.file, length);
 if (!error)
  error = security_path_truncate(&f.file->f_path);
 if (!error)
  error = do_truncate(dentry, length, ATTR_MTIME|ATTR_CTIME, f.file);
 sb_end_write(inode->i_sb);
out_putf:
 fdput(f);
out:
 return error;
}
