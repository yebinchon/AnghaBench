
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct file {struct pipe_inode_info* private_data; int * f_op; } ;


 int pipefifo_fops ;

struct pipe_inode_info *get_pipe_info(struct file *file)
{
 return file->f_op == &pipefifo_fops ? file->private_data : ((void*)0);
}
