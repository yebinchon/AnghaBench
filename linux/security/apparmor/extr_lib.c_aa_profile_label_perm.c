
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct common_audit_data {int dummy; } ;
struct aa_profile {int label; } ;
struct aa_perms {int deny; } ;
struct TYPE_2__ {int request; int * peer; int * label; } ;


 int aa_apply_modes_to_perms (struct aa_profile*,struct aa_perms*) ;
 int aa_audit_perms_cb ;
 int aa_check_perms (struct aa_profile*,struct aa_perms*,int,struct common_audit_data*,int ) ;
 int aa_profile_match_label (struct aa_profile*,int *,int,int,struct aa_perms*) ;
 TYPE_1__* aad (struct common_audit_data*) ;

int aa_profile_label_perm(struct aa_profile *profile, struct aa_profile *target,
     u32 request, int type, u32 *deny,
     struct common_audit_data *sa)
{
 struct aa_perms perms;

 aad(sa)->label = &profile->label;
 aad(sa)->peer = &target->label;
 aad(sa)->request = request;

 aa_profile_match_label(profile, &target->label, type, request, &perms);
 aa_apply_modes_to_perms(profile, &perms);
 *deny |= request & perms.deny;
 return aa_check_perms(profile, &perms, request, sa, aa_audit_perms_cb);
}
