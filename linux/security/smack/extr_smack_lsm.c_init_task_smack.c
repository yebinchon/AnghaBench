
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {int smk_rules_lock; int smk_relabel; int smk_rules; struct smack_known* smk_forked; struct smack_known* smk_task; } ;
struct smack_known {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void init_task_smack(struct task_smack *tsp, struct smack_known *task,
     struct smack_known *forked)
{
 tsp->smk_task = task;
 tsp->smk_forked = forked;
 INIT_LIST_HEAD(&tsp->smk_rules);
 INIT_LIST_HEAD(&tsp->smk_relabel);
 mutex_init(&tsp->smk_rules_lock);
}
