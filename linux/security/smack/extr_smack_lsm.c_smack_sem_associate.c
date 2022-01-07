
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int smack_flags_to_may (int) ;
 int smk_curacc_sem (struct kern_ipc_perm*,int) ;

__attribute__((used)) static int smack_sem_associate(struct kern_ipc_perm *isp, int semflg)
{
 int may;

 may = smack_flags_to_may(semflg);
 return smk_curacc_sem(isp, may);
}
