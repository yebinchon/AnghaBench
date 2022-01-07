
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void __pipe_unlock(struct pipe_inode_info *pipe)
{
 mutex_unlock(&pipe->mutex);
}
