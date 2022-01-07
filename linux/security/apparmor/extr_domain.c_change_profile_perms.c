
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_profile {int dummy; } ;
struct aa_perms {int allow; scalar_t__ kill; scalar_t__ quiet; scalar_t__ audit; } ;
struct aa_label {int dummy; } ;


 int AA_MAY_CHANGE_PROFILE ;
 int AA_MAY_ONEXEC ;
 int label_match (struct aa_profile*,struct aa_label*,int,unsigned int,int,int ,struct aa_perms*) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static int change_profile_perms(struct aa_profile *profile,
    struct aa_label *target, bool stack,
    u32 request, unsigned int start,
    struct aa_perms *perms)
{
 if (profile_unconfined(profile)) {
  perms->allow = AA_MAY_CHANGE_PROFILE | AA_MAY_ONEXEC;
  perms->audit = perms->quiet = perms->kill = 0;
  return 0;
 }


 return label_match(profile, target, stack, start, 1, request, perms);
}
