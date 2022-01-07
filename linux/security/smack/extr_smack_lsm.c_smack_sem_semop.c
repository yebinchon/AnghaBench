
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sembuf {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;


 int MAY_READWRITE ;
 int smk_curacc_sem (struct kern_ipc_perm*,int ) ;

__attribute__((used)) static int smack_sem_semop(struct kern_ipc_perm *isp, struct sembuf *sops,
      unsigned nsops, int alter)
{
 return smk_curacc_sem(isp, MAY_READWRITE);
}
