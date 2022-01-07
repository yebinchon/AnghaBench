
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int profiles; } ;
struct aa_profile {int label; TYPE_2__ base; TYPE_1__* ns; } ;
struct TYPE_3__ {int lock; } ;


 int AA_BUG (int) ;
 int __aa_profile_list_release (int *) ;
 int __aafs_profile_rmdir (struct aa_profile*) ;
 int __list_remove_profile (struct aa_profile*) ;
 int aa_label_remove (int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __remove_profile(struct aa_profile *profile)
{
 AA_BUG(!profile);
 AA_BUG(!profile->ns);
 AA_BUG(!mutex_is_locked(&profile->ns->lock));


 __aa_profile_list_release(&profile->base.profiles);

 aa_label_remove(&profile->label);
 __aafs_profile_rmdir(profile);
 __list_remove_profile(profile);
}
