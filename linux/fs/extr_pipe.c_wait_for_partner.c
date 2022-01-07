
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;


 int ERESTARTSYS ;
 int current ;
 int pipe_wait (struct pipe_inode_info*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int wait_for_partner(struct pipe_inode_info *pipe, unsigned int *cnt)
{
 int cur = *cnt;

 while (cur == *cnt) {
  pipe_wait(pipe);
  if (signal_pending(current))
   break;
 }
 return cur == *cnt ? -ERESTARTSYS : 0;
}
