
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct linux_binprm {int dummy; } ;
struct aa_label {int dummy; } ;
struct aa_profile {struct aa_label label; } ;
struct aa_ns {int dummy; } ;


 int __attach_match (struct linux_binprm const*,char const*,struct list_head*,char const**) ;
 struct aa_profile* aa_get_profile (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct aa_label *find_attach(const struct linux_binprm *bprm,
        struct aa_ns *ns, struct list_head *list,
        const char *name, const char **info)
{
 struct aa_profile *profile;

 rcu_read_lock();
 profile = aa_get_profile(__attach_match(bprm, name, list, info));
 rcu_read_unlock();

 return profile ? &profile->label : ((void*)0);
}
