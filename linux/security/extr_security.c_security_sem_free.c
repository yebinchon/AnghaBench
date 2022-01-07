
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int * security; } ;


 int call_void_hook (int ,struct kern_ipc_perm*) ;
 int kfree (int *) ;
 int sem_free_security ;

void security_sem_free(struct kern_ipc_perm *sma)
{
 call_void_hook(sem_free_security, sma);
 kfree(sma->security);
 sma->security = ((void*)0);
}
