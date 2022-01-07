
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct task_smack {int dummy; } ;
struct smk_audit_info {int dummy; } ;
struct smack_known {int smk_known; } ;
struct cred {int dummy; } ;


 int CAP_SYS_PTRACE ;
 int EACCES ;
 int LSM_AUDIT_DATA_TASK ;
 unsigned int PTRACE_MODE_ATTACH ;
 unsigned int PTRACE_MODE_NOAUDIT ;
 scalar_t__ SMACK_PTRACE_DRACONIAN ;
 scalar_t__ SMACK_PTRACE_EXACT ;
 struct cred* __task_cred (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct task_smack* smack_cred (struct cred const*) ;
 int smack_log (int ,int ,int ,int,struct smk_audit_info*) ;
 scalar_t__ smack_privileged_cred (int ,struct cred const*) ;
 scalar_t__ smack_ptrace_rule ;
 int smk_ad_init (struct smk_audit_info*,char const*,int ) ;
 int smk_ad_setfield_u_tsk (struct smk_audit_info*,struct task_struct*) ;
 struct smack_known* smk_of_task (struct task_smack*) ;
 int smk_ptrace_mode (unsigned int) ;
 int smk_tskacc (struct task_smack*,struct smack_known*,int ,struct smk_audit_info*) ;

__attribute__((used)) static int smk_ptrace_rule_check(struct task_struct *tracer,
     struct smack_known *tracee_known,
     unsigned int mode, const char *func)
{
 int rc;
 struct smk_audit_info ad, *saip = ((void*)0);
 struct task_smack *tsp;
 struct smack_known *tracer_known;
 const struct cred *tracercred;

 if ((mode & PTRACE_MODE_NOAUDIT) == 0) {
  smk_ad_init(&ad, func, LSM_AUDIT_DATA_TASK);
  smk_ad_setfield_u_tsk(&ad, tracer);
  saip = &ad;
 }

 rcu_read_lock();
 tracercred = __task_cred(tracer);
 tsp = smack_cred(tracercred);
 tracer_known = smk_of_task(tsp);

 if ((mode & PTRACE_MODE_ATTACH) &&
     (smack_ptrace_rule == SMACK_PTRACE_EXACT ||
      smack_ptrace_rule == SMACK_PTRACE_DRACONIAN)) {
  if (tracer_known->smk_known == tracee_known->smk_known)
   rc = 0;
  else if (smack_ptrace_rule == SMACK_PTRACE_DRACONIAN)
   rc = -EACCES;
  else if (smack_privileged_cred(CAP_SYS_PTRACE, tracercred))
   rc = 0;
  else
   rc = -EACCES;

  if (saip)
   smack_log(tracer_known->smk_known,
      tracee_known->smk_known,
      0, rc, saip);

  rcu_read_unlock();
  return rc;
 }


 rc = smk_tskacc(tsp, tracee_known, smk_ptrace_mode(mode), saip);

 rcu_read_unlock();
 return rc;
}
