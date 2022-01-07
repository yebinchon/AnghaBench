
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int mutex; scalar_t__ files; } ;


 int mutex_lock_nested (int *,int) ;

__attribute__((used)) static void pipe_lock_nested(struct pipe_inode_info *pipe, int subclass)
{
 if (pipe->files)
  mutex_lock_nested(&pipe->mutex, subclass);
}
