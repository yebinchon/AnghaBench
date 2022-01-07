
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int profiles; } ;
struct aa_profile {TYPE_1__ base; } ;


 struct aa_profile* __find_child (int *,char const*) ;
 int aa_get_profile_not0 (struct aa_profile*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct aa_profile *aa_find_child(struct aa_profile *parent, const char *name)
{
 struct aa_profile *profile;

 rcu_read_lock();
 do {
  profile = __find_child(&parent->base.profiles, name);
 } while (profile && !aa_get_profile_not0(profile));
 rcu_read_unlock();


 return profile;
}
