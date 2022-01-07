
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wake_up_partner(struct pipe_inode_info *pipe)
{
 wake_up_interruptible(&pipe->wait);
}
