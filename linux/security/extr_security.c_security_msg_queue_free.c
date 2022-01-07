
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int * security; } ;


 int call_void_hook (int ,struct kern_ipc_perm*) ;
 int kfree (int *) ;
 int msg_queue_free_security ;

void security_msg_queue_free(struct kern_ipc_perm *msq)
{
 call_void_hook(msg_queue_free_security, msq);
 kfree(msq->security);
 msq->security = ((void*)0);
}
