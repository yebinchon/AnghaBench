
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct msg_msg {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,struct msg_msg*,struct task_struct*,long,int) ;
 int msg_queue_msgrcv ;

int security_msg_queue_msgrcv(struct kern_ipc_perm *msq, struct msg_msg *msg,
          struct task_struct *target, long type, int mode)
{
 return call_int_hook(msg_queue_msgrcv, 0, msq, msg, target, type, mode);
}
