
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct TYPE_3__ {int denied; int allow; } ;
struct aa_profile {TYPE_1__ caps; } ;
struct TYPE_4__ {char* info; } ;


 unsigned int CAP_OPT_NOAUDIT ;
 int COMPLAIN_MODE (struct aa_profile*) ;
 int EPERM ;
 TYPE_2__* aad (struct common_audit_data*) ;
 int audit_caps (struct common_audit_data*,struct aa_profile*,int,int) ;
 scalar_t__ cap_raised (int ,int) ;

__attribute__((used)) static int profile_capable(struct aa_profile *profile, int cap,
      unsigned int opts, struct common_audit_data *sa)
{
 int error;

 if (cap_raised(profile->caps.allow, cap) &&
     !cap_raised(profile->caps.denied, cap))
  error = 0;
 else
  error = -EPERM;

 if (opts & CAP_OPT_NOAUDIT) {
  if (!COMPLAIN_MODE(profile))
   return error;



  aad(sa)->info = "optional: no audit";
 }

 return audit_caps(sa, profile, cap, error);
}
