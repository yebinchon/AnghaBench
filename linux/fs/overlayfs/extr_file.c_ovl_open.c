
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; struct file* private_data; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOCTTY ;
 int O_TRUNC ;
 int PTR_ERR (struct file*) ;
 int file_dentry (struct file*) ;
 int ovl_inode_realdata (struct inode*) ;
 int ovl_maybe_copy_up (int ,int) ;
 struct file* ovl_open_realfile (struct file*,int ) ;

__attribute__((used)) static int ovl_open(struct inode *inode, struct file *file)
{
 struct file *realfile;
 int err;

 err = ovl_maybe_copy_up(file_dentry(file), file->f_flags);
 if (err)
  return err;


 file->f_flags &= ~(O_CREAT | O_EXCL | O_NOCTTY | O_TRUNC);

 realfile = ovl_open_realfile(file, ovl_inode_realdata(inode));
 if (IS_ERR(realfile))
  return PTR_ERR(realfile);

 file->private_data = realfile;

 return 0;
}
