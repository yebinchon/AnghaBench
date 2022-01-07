
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int parent; } ;


 struct aa_profile* rcu_access_pointer (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int profile_depth(struct aa_profile *profile)
{
 int depth = 0;

 rcu_read_lock();
 for (depth = 0; profile; profile = rcu_access_pointer(profile->parent))
  depth++;
 rcu_read_unlock();

 return depth;
}
