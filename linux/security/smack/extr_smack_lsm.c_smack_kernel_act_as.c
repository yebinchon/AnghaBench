
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_smack {int smk_task; } ;
struct cred {int dummy; } ;


 struct task_smack* smack_cred (struct cred*) ;
 int smack_from_secid (int ) ;

__attribute__((used)) static int smack_kernel_act_as(struct cred *new, u32 secid)
{
 struct task_smack *new_tsp = smack_cred(new);

 new_tsp->smk_task = smack_from_secid(secid);
 return 0;
}
