
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct ucounts {scalar_t__ count; int node; int uid; struct user_namespace* ns; } ;
struct hlist_head {int dummy; } ;
typedef int kuid_t ;


 int GFP_KERNEL ;
 scalar_t__ INT_MAX ;
 struct ucounts* find_ucounts (struct user_namespace*,int ,struct hlist_head*) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int kfree (struct ucounts*) ;
 struct ucounts* kzalloc (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct hlist_head* ucounts_hashentry (struct user_namespace*,int ) ;
 int ucounts_lock ;

__attribute__((used)) static struct ucounts *get_ucounts(struct user_namespace *ns, kuid_t uid)
{
 struct hlist_head *hashent = ucounts_hashentry(ns, uid);
 struct ucounts *ucounts, *new;

 spin_lock_irq(&ucounts_lock);
 ucounts = find_ucounts(ns, uid, hashent);
 if (!ucounts) {
  spin_unlock_irq(&ucounts_lock);

  new = kzalloc(sizeof(*new), GFP_KERNEL);
  if (!new)
   return ((void*)0);

  new->ns = ns;
  new->uid = uid;
  new->count = 0;

  spin_lock_irq(&ucounts_lock);
  ucounts = find_ucounts(ns, uid, hashent);
  if (ucounts) {
   kfree(new);
  } else {
   hlist_add_head(&new->node, hashent);
   ucounts = new;
  }
 }
 if (ucounts->count == INT_MAX)
  ucounts = ((void*)0);
 else
  ucounts->count += 1;
 spin_unlock_irq(&ucounts_lock);
 return ucounts;
}
