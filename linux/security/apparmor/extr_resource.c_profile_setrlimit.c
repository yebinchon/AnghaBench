
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rlimit {scalar_t__ rlim_max; } ;
struct TYPE_4__ {int mask; TYPE_1__* limits; } ;
struct aa_profile {TYPE_2__ rlimits; } ;
struct TYPE_3__ {scalar_t__ rlim_max; } ;


 int EACCES ;
 int audit_resource (struct aa_profile*,unsigned int,scalar_t__,int *,int *,int) ;

__attribute__((used)) static int profile_setrlimit(struct aa_profile *profile, unsigned int resource,
        struct rlimit *new_rlim)
{
 int e = 0;

 if (profile->rlimits.mask & (1 << resource) && new_rlim->rlim_max >
     profile->rlimits.limits[resource].rlim_max)
  e = -EACCES;
 return audit_resource(profile, resource, new_rlim->rlim_max, ((void*)0), ((void*)0),
         e);
}
