
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_extents; } ;
struct user_namespace {int flags; TYPE_1__ gid_map; } ;


 int USERNS_SETGROUPS_ALLOWED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int userns_state_mutex ;

bool userns_may_setgroups(const struct user_namespace *ns)
{
 bool allowed;

 mutex_lock(&userns_state_mutex);



 allowed = ns->gid_map.nr_extents != 0;

 allowed = allowed && (ns->flags & USERNS_SETGROUPS_ALLOWED);
 mutex_unlock(&userns_state_mutex);

 return allowed;
}
