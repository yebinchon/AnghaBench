
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int mutex; scalar_t__ files; } ;


 int mutex_unlock (int *) ;

void pipe_unlock(struct pipe_inode_info *pipe)
{
 if (pipe->files)
  mutex_unlock(&pipe->mutex);
}
