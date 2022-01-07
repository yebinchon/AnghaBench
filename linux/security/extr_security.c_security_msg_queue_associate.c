
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,int) ;
 int msg_queue_associate ;

int security_msg_queue_associate(struct kern_ipc_perm *msq, int msqflg)
{
 return call_int_hook(msg_queue_associate, 0, msq, msqflg);
}
