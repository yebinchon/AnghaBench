
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int mems_allowed; } ;


 int EACCES ;
 int EINVAL ;
 int callback_lock ;
 int nodelist_parse (char const*,int ) ;
 int nodes_clear (int ) ;
 scalar_t__ nodes_equal (int ,int ) ;
 int nodes_subset (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cpuset top_cpuset ;
 int update_nodemasks_hier (struct cpuset*,int *) ;
 int validate_change (struct cpuset*,struct cpuset*) ;

__attribute__((used)) static int update_nodemask(struct cpuset *cs, struct cpuset *trialcs,
      const char *buf)
{
 int retval;





 if (cs == &top_cpuset) {
  retval = -EACCES;
  goto done;
 }







 if (!*buf) {
  nodes_clear(trialcs->mems_allowed);
 } else {
  retval = nodelist_parse(buf, trialcs->mems_allowed);
  if (retval < 0)
   goto done;

  if (!nodes_subset(trialcs->mems_allowed,
      top_cpuset.mems_allowed)) {
   retval = -EINVAL;
   goto done;
  }
 }

 if (nodes_equal(cs->mems_allowed, trialcs->mems_allowed)) {
  retval = 0;
  goto done;
 }
 retval = validate_change(cs, trialcs);
 if (retval < 0)
  goto done;

 spin_lock_irq(&callback_lock);
 cs->mems_allowed = trialcs->mems_allowed;
 spin_unlock_irq(&callback_lock);


 update_nodemasks_hier(cs, &trialcs->mems_allowed);
done:
 return retval;
}
