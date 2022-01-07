
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct smack_known {int dummy; } ;
struct cred {int dummy; } ;


 struct cred* __task_cred (struct task_struct const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smack_cred (struct cred const*) ;
 struct smack_known* smk_of_task (int ) ;

__attribute__((used)) static inline struct smack_known *smk_of_task_struct(
      const struct task_struct *t)
{
 struct smack_known *skp;
 const struct cred *cred;

 rcu_read_lock();

 cred = __task_cred(t);
 skp = smk_of_task(smack_cred(cred));

 rcu_read_unlock();

 return skp;
}
