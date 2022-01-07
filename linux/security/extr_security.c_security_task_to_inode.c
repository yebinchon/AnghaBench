
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;


 int call_void_hook (int ,struct task_struct*,struct inode*) ;
 int task_to_inode ;

void security_task_to_inode(struct task_struct *p, struct inode *inode)
{
 call_void_hook(task_to_inode, p, inode);
}
