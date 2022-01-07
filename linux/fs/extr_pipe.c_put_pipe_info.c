
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int files; } ;
struct inode {int i_lock; int * i_pipe; } ;


 int free_pipe_info (struct pipe_inode_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_pipe_info(struct inode *inode, struct pipe_inode_info *pipe)
{
 int kill = 0;

 spin_lock(&inode->i_lock);
 if (!--pipe->files) {
  inode->i_pipe = ((void*)0);
  kill = 1;
 }
 spin_unlock(&inode->i_lock);

 if (kill)
  free_pipe_info(pipe);
}
