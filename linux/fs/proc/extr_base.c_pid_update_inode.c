
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;


 int S_ISGID ;
 int S_ISUID ;
 int security_task_to_inode (struct task_struct*,struct inode*) ;
 int task_dump_owner (struct task_struct*,int,int *,int *) ;

void pid_update_inode(struct task_struct *task, struct inode *inode)
{
 task_dump_owner(task, inode->i_mode, &inode->i_uid, &inode->i_gid);

 inode->i_mode &= ~(S_ISUID | S_ISGID);
 security_task_to_inode(task, inode);
}
