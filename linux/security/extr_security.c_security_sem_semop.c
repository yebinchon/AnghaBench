
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sembuf {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,struct sembuf*,unsigned int,int) ;
 int sem_semop ;

int security_sem_semop(struct kern_ipc_perm *sma, struct sembuf *sops,
   unsigned nsops, int alter)
{
 return call_int_hook(sem_semop, 0, sma, sops, nsops, alter);
}
