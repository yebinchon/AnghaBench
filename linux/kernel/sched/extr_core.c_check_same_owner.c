
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int uid; int euid; } ;


 struct cred* __task_cred (struct task_struct*) ;
 struct cred* current_cred () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool check_same_owner(struct task_struct *p)
{
 const struct cred *cred = current_cred(), *pcred;
 bool match;

 rcu_read_lock();
 pcred = __task_cred(p);
 match = (uid_eq(cred->euid, pcred->euid) ||
   uid_eq(cred->euid, pcred->uid));
 rcu_read_unlock();
 return match;
}
