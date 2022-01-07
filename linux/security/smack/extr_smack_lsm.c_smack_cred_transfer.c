
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {int smk_rules; int smk_rules_lock; int smk_task; int smk_forked; } ;
typedef struct cred const cred ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 struct task_smack* smack_cred (struct cred const*) ;

__attribute__((used)) static void smack_cred_transfer(struct cred *new, const struct cred *old)
{
 struct task_smack *old_tsp = smack_cred(old);
 struct task_smack *new_tsp = smack_cred(new);

 new_tsp->smk_task = old_tsp->smk_task;
 new_tsp->smk_forked = old_tsp->smk_task;
 mutex_init(&new_tsp->smk_rules_lock);
 INIT_LIST_HEAD(&new_tsp->smk_rules);


}
