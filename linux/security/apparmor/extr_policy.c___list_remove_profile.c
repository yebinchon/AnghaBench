
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct aa_profile {TYPE_2__ base; TYPE_1__* ns; } ;
struct TYPE_3__ {int lock; } ;


 int AA_BUG (int) ;
 int aa_put_profile (struct aa_profile*) ;
 int list_del_rcu (int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __list_remove_profile(struct aa_profile *profile)
{
 AA_BUG(!profile);
 AA_BUG(!profile->ns);
 AA_BUG(!mutex_is_locked(&profile->ns->lock));

 list_del_rcu(&profile->base.list);
 aa_put_profile(profile);
}
