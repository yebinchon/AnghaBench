
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;


 int BUG_ON (int) ;
 int I_MUTEX_CHILD ;
 int I_MUTEX_PARENT ;
 int pipe_lock_nested (struct pipe_inode_info*,int ) ;

void pipe_double_lock(struct pipe_inode_info *pipe1,
        struct pipe_inode_info *pipe2)
{
 BUG_ON(pipe1 == pipe2);

 if (pipe1 < pipe2) {
  pipe_lock_nested(pipe1, I_MUTEX_PARENT);
  pipe_lock_nested(pipe2, I_MUTEX_CHILD);
 } else {
  pipe_lock_nested(pipe2, I_MUTEX_PARENT);
  pipe_lock_nested(pipe1, I_MUTEX_CHILD);
 }
}
