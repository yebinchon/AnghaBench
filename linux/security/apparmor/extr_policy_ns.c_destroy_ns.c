
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {int profiles; } ;
struct aa_ns {int lock; TYPE_1__ labels; struct aa_ns* parent; int sub_ns; TYPE_2__ base; int level; } ;


 int __aa_profile_list_release (int *) ;
 int __aa_proxy_redirect (int ,int ) ;
 int __aafs_ns_rmdir (struct aa_ns*) ;
 int __ns_list_release (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ns_unconfined (struct aa_ns*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void destroy_ns(struct aa_ns *ns)
{
 if (!ns)
  return;

 mutex_lock_nested(&ns->lock, ns->level);

 __aa_profile_list_release(&ns->base.profiles);


 __ns_list_release(&ns->sub_ns);

 if (ns->parent) {
  unsigned long flags;

  write_lock_irqsave(&ns->labels.lock, flags);
  __aa_proxy_redirect(ns_unconfined(ns),
        ns_unconfined(ns->parent));
  write_unlock_irqrestore(&ns->labels.lock, flags);
 }
 __aafs_ns_rmdir(ns);
 mutex_unlock(&ns->lock);
}
