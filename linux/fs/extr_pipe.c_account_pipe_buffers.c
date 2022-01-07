
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int pipe_bufs; } ;


 unsigned long atomic_long_add_return (unsigned long,int *) ;

__attribute__((used)) static unsigned long account_pipe_buffers(struct user_struct *user,
                                 unsigned long old, unsigned long new)
{
 return atomic_long_add_return(new - old, &user->pipe_bufs);
}
