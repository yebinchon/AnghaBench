
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_smack {int dummy; } ;
struct smk_audit_info {int dummy; } ;
struct smack_known {int dummy; } ;


 int current_cred () ;
 struct task_smack* smack_cred (int ) ;
 int smk_tskacc (struct task_smack*,struct smack_known*,int ,struct smk_audit_info*) ;

int smk_curacc(struct smack_known *obj_known,
        u32 mode, struct smk_audit_info *a)
{
 struct task_smack *tsp = smack_cred(current_cred());

 return smk_tskacc(tsp, obj_known, mode, a);
}
