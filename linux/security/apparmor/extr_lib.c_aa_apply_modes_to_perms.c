
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_perms {void* complain; void* kill; void* quiet; void* audit; } ;


 void* ALL_PERMS_MASK ;

 int AUDIT_MODE (struct aa_profile*) ;



 scalar_t__ COMPLAIN_MODE (struct aa_profile*) ;
 scalar_t__ KILL_MODE (struct aa_profile*) ;

void aa_apply_modes_to_perms(struct aa_profile *profile, struct aa_perms *perms)
{
 switch (AUDIT_MODE(profile)) {
 case 131:
  perms->audit = ALL_PERMS_MASK;

 case 130:
  perms->quiet = 0;
  break;
 case 129:
  perms->audit = 0;

 case 128:
  perms->quiet = ALL_PERMS_MASK;
  break;
 }

 if (KILL_MODE(profile))
  perms->kill = ALL_PERMS_MASK;
 else if (COMPLAIN_MODE(profile))
  perms->complain = ALL_PERMS_MASK;





}
