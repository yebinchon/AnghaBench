
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {int user_ns; int cap_permitted; } ;
struct TYPE_3__ {int cap_permitted; } ;


 int CAP_SYS_NICE ;
 int EPERM ;
 TYPE_2__* __task_cred (struct task_struct*) ;
 int cap_issubset (int ,int ) ;
 TYPE_1__* current_cred () ;
 int ns_capable (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int cap_safe_nice(struct task_struct *p)
{
 int is_subset, ret = 0;

 rcu_read_lock();
 is_subset = cap_issubset(__task_cred(p)->cap_permitted,
     current_cred()->cap_permitted);
 if (!is_subset && !ns_capable(__task_cred(p)->user_ns, CAP_SYS_NICE))
  ret = -EPERM;
 rcu_read_unlock();

 return ret;
}
