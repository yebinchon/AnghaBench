
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_3__ {int list; } ;
struct aa_profile {struct aa_label label; TYPE_2__* ns; TYPE_1__ base; } ;
struct TYPE_4__ {int labels; int lock; } ;


 int AA_BUG (int) ;
 int aa_get_profile (struct aa_profile*) ;
 struct aa_label* aa_label_insert (int *,struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 int list_add_rcu (int *,struct list_head*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __add_profile(struct list_head *list, struct aa_profile *profile)
{
 struct aa_label *l;

 AA_BUG(!list);
 AA_BUG(!profile);
 AA_BUG(!profile->ns);
 AA_BUG(!mutex_is_locked(&profile->ns->lock));

 list_add_rcu(&profile->base.list, list);

 aa_get_profile(profile);
 l = aa_label_insert(&profile->ns->labels, &profile->label);
 AA_BUG(l != &profile->label);
 aa_put_label(l);
}
