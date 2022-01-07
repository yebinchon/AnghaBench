
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,int) ;
 int msg_queue_msgctl ;

int security_msg_queue_msgctl(struct kern_ipc_perm *msq, int cmd)
{
 return call_int_hook(msg_queue_msgctl, 0, msq, cmd);
}
