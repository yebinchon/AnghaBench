
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,int) ;
 int sem_associate ;

int security_sem_associate(struct kern_ipc_perm *sma, int semflg)
{
 return call_int_hook(sem_associate, 0, sma, semflg);
}
