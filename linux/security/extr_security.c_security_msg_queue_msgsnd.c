
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,struct msg_msg*,int) ;
 int msg_queue_msgsnd ;

int security_msg_queue_msgsnd(struct kern_ipc_perm *msq,
          struct msg_msg *msg, int msqflg)
{
 return call_int_hook(msg_queue_msgsnd, 0, msq, msg, msqflg);
}
