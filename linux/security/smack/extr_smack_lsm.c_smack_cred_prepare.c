
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {int smk_relabel; int smk_rules; int smk_task; } ;
typedef struct cred const cred ;
typedef int gfp_t ;


 int init_task_smack (struct task_smack*,int ,int ) ;
 struct task_smack* smack_cred (struct cred const*) ;
 int smk_copy_relabel (int *,int *,int ) ;
 int smk_copy_rules (int *,int *,int ) ;

__attribute__((used)) static int smack_cred_prepare(struct cred *new, const struct cred *old,
         gfp_t gfp)
{
 struct task_smack *old_tsp = smack_cred(old);
 struct task_smack *new_tsp = smack_cred(new);
 int rc;

 init_task_smack(new_tsp, old_tsp->smk_task, old_tsp->smk_task);

 rc = smk_copy_rules(&new_tsp->smk_rules, &old_tsp->smk_rules, gfp);
 if (rc != 0)
  return rc;

 rc = smk_copy_relabel(&new_tsp->smk_relabel, &old_tsp->smk_relabel,
    gfp);
 return rc;
}
