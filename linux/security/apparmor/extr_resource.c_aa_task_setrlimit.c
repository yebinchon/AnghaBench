
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rlimit {int rlim_max; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int CAP_OPT_NOAUDIT ;
 int CAP_SYS_RESOURCE ;
 int EACCES ;
 int __task_cred (struct task_struct*) ;
 scalar_t__ aa_capable (struct aa_label*,int ,int ) ;
 struct aa_label* aa_get_newest_cred_label (int ) ;
 int aa_put_label (struct aa_label*) ;
 int audit_resource (struct aa_profile*,unsigned int,int ,struct aa_label*,char*,int ) ;
 int fn_for_each (struct aa_label*,struct aa_profile*,int ) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int profile_setrlimit (struct aa_profile*,unsigned int,struct rlimit*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int aa_task_setrlimit(struct aa_label *label, struct task_struct *task,
        unsigned int resource, struct rlimit *new_rlim)
{
 struct aa_profile *profile;
 struct aa_label *peer;
 int error = 0;

 rcu_read_lock();
 peer = aa_get_newest_cred_label(__task_cred(task));
 rcu_read_unlock();
 if (label != peer &&
     aa_capable(label, CAP_SYS_RESOURCE, CAP_OPT_NOAUDIT) != 0)
  error = fn_for_each(label, profile,
    audit_resource(profile, resource,
            new_rlim->rlim_max, peer,
            "cap_sys_resource", -EACCES));
 else
  error = fn_for_each_confined(label, profile,
    profile_setrlimit(profile, resource, new_rlim));
 aa_put_label(peer);

 return error;
}
