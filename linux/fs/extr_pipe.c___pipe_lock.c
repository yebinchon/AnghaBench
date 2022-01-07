
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int mutex; } ;


 int I_MUTEX_PARENT ;
 int mutex_lock_nested (int *,int ) ;

__attribute__((used)) static inline void __pipe_lock(struct pipe_inode_info *pipe)
{
 mutex_lock_nested(&pipe->mutex, I_MUTEX_PARENT);
}
