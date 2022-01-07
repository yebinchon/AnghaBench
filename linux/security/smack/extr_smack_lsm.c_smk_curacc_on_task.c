
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct smk_audit_info {int dummy; } ;
struct smack_known {int dummy; } ;


 int LSM_AUDIT_DATA_TASK ;
 int smk_ad_init (struct smk_audit_info*,char const*,int ) ;
 int smk_ad_setfield_u_tsk (struct smk_audit_info*,struct task_struct*) ;
 int smk_bu_task (struct task_struct*,int,int) ;
 int smk_curacc (struct smack_known*,int,struct smk_audit_info*) ;
 struct smack_known* smk_of_task_struct (struct task_struct*) ;

__attribute__((used)) static int smk_curacc_on_task(struct task_struct *p, int access,
    const char *caller)
{
 struct smk_audit_info ad;
 struct smack_known *skp = smk_of_task_struct(p);
 int rc;

 smk_ad_init(&ad, caller, LSM_AUDIT_DATA_TASK);
 smk_ad_setfield_u_tsk(&ad, p);
 rc = smk_curacc(skp, access, &ad);
 rc = smk_bu_task(p, access, rc);
 return rc;
}
