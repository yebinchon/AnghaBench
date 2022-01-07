
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smk_audit_info {int dummy; } ;
struct smack_known {scalar_t__ smk_known; int smk_rules; } ;


 int EACCES ;
 int MAY_ANYREAD ;
 int MAY_BRINGUP ;
 int MAY_LOCK ;
 int MAY_NOT ;
 int SMACK_BRINGUP_ALLOW ;
 int SMACK_UNCONFINED_OBJECT ;
 int SMACK_UNCONFINED_SUBJECT ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct smack_known smack_known_floor ;
 struct smack_known smack_known_hat ;
 struct smack_known smack_known_star ;
 struct smack_known smack_known_web ;
 int smack_log (scalar_t__,scalar_t__,int,int,struct smk_audit_info*) ;
 struct smack_known* smack_unconfined ;
 int smk_access_entry (scalar_t__,scalar_t__,int *) ;

int smk_access(struct smack_known *subject, struct smack_known *object,
        int request, struct smk_audit_info *a)
{
 int may = MAY_NOT;
 int rc = 0;







 if (subject == &smack_known_star) {
  rc = -EACCES;
  goto out_audit;
 }





 if (object == &smack_known_web || subject == &smack_known_web)
  goto out_audit;



 if (object == &smack_known_star)
  goto out_audit;




 if (subject->smk_known == object->smk_known)
  goto out_audit;




 if ((request & MAY_ANYREAD) == request ||
     (request & MAY_LOCK) == request) {
  if (object == &smack_known_floor)
   goto out_audit;
  if (subject == &smack_known_hat)
   goto out_audit;
 }







 rcu_read_lock();
 may = smk_access_entry(subject->smk_known, object->smk_known,
          &subject->smk_rules);
 rcu_read_unlock();

 if (may <= 0 || (request & may) != request) {
  rc = -EACCES;
  goto out_audit;
 }
out_audit:
 return rc;
}
