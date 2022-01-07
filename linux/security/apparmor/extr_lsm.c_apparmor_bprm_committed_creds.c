
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int dummy; } ;


 int aa_clear_task_ctx_trans (int ) ;
 int current ;
 int task_ctx (int ) ;

__attribute__((used)) static void apparmor_bprm_committed_creds(struct linux_binprm *bprm)
{

 aa_clear_task_ctx_trans(task_ctx(current));

 return;
}
