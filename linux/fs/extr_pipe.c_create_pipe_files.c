
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_pipe; } ;
struct file {int private_data; } ;


 int ENFILE ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_DIRECT ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 int PTR_ERR (struct file*) ;
 struct file* alloc_file_clone (struct file*,int,int *) ;
 struct file* alloc_file_pseudo (struct inode*,int ,char*,int,int *) ;
 int fput (struct file*) ;
 int free_pipe_info (int ) ;
 struct inode* get_pipe_inode () ;
 int iput (struct inode*) ;
 int pipe_mnt ;
 int pipefifo_fops ;
 int put_pipe_info (struct inode*,int ) ;

int create_pipe_files(struct file **res, int flags)
{
 struct inode *inode = get_pipe_inode();
 struct file *f;

 if (!inode)
  return -ENFILE;

 f = alloc_file_pseudo(inode, pipe_mnt, "",
    O_WRONLY | (flags & (O_NONBLOCK | O_DIRECT)),
    &pipefifo_fops);
 if (IS_ERR(f)) {
  free_pipe_info(inode->i_pipe);
  iput(inode);
  return PTR_ERR(f);
 }

 f->private_data = inode->i_pipe;

 res[0] = alloc_file_clone(f, O_RDONLY | (flags & O_NONBLOCK),
      &pipefifo_fops);
 if (IS_ERR(res[0])) {
  put_pipe_info(inode, inode->i_pipe);
  fput(f);
  return PTR_ERR(res[0]);
 }
 res[0]->private_data = inode->i_pipe;
 res[1] = f;
 return 0;
}
