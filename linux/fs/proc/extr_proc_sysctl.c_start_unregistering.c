
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {struct completion* unregistering; int used; } ;
struct completion {int dummy; } ;


 int EINVAL ;
 struct completion* ERR_PTR (int ) ;
 int erase_header (struct ctl_table_header*) ;
 int init_completion (struct completion*) ;
 int proc_sys_prune_dcache (struct ctl_table_header*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 scalar_t__ unlikely (int ) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static void start_unregistering(struct ctl_table_header *p)
{




 if (unlikely(p->used)) {
  struct completion wait;
  init_completion(&wait);
  p->unregistering = &wait;
  spin_unlock(&sysctl_lock);
  wait_for_completion(&wait);
 } else {

  p->unregistering = ERR_PTR(-EINVAL);
  spin_unlock(&sysctl_lock);
 }




 proc_sys_prune_dcache(p);




 spin_lock(&sysctl_lock);
 erase_header(p);
}
