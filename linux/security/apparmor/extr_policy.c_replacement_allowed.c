
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct aa_profile {TYPE_1__ label; } ;


 int EEXIST ;
 int EPERM ;
 int FLAG_IMMUTIBLE ;

__attribute__((used)) static int replacement_allowed(struct aa_profile *profile, int noreplace,
          const char **info)
{
 if (profile) {
  if (profile->label.flags & FLAG_IMMUTIBLE) {
   *info = "cannot replace immutible profile";
   return -EPERM;
  } else if (noreplace) {
   *info = "profile already exists";
   return -EEXIST;
  }
 }
 return 0;
}
