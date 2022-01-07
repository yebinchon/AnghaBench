
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_smack {int smk_rules; } ;
struct smk_audit_info {int dummy; } ;
struct smack_known {int smk_known; } ;


 int CAP_MAC_OVERRIDE ;
 int EACCES ;
 int smack_log (int ,int ,int,int,struct smk_audit_info*) ;
 scalar_t__ smack_privileged (int ) ;
 int smk_access (struct smack_known*,struct smack_known*,int,int *) ;
 int smk_access_entry (int ,int ,int *) ;
 struct smack_known* smk_of_task (struct task_smack*) ;

int smk_tskacc(struct task_smack *tsp, struct smack_known *obj_known,
        u32 mode, struct smk_audit_info *a)
{
 struct smack_known *sbj_known = smk_of_task(tsp);
 int may;
 int rc;




 rc = smk_access(sbj_known, obj_known, mode, ((void*)0));
 if (rc >= 0) {




  may = smk_access_entry(sbj_known->smk_known,
           obj_known->smk_known,
           &tsp->smk_rules);
  if (may < 0)
   goto out_audit;
  if ((mode & may) == mode)
   goto out_audit;
  rc = -EACCES;
 }




 if (rc != 0 && smack_privileged(CAP_MAC_OVERRIDE))
  rc = 0;

out_audit:





 return rc;
}
