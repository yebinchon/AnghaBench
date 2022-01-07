
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,int) ;
 int sem_semctl ;

int security_sem_semctl(struct kern_ipc_perm *sma, int cmd)
{
 return call_int_hook(sem_semctl, 0, sma, cmd);
}
