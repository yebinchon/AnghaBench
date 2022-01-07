
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct common_audit_data {int dummy; } ;
struct TYPE_3__ {int * start; int dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_4__ {int signal; struct aa_label* peer; } ;


 size_t AA_CLASS_SIGNAL ;
 int PROFILE_MEDIATES (struct aa_profile*,size_t) ;
 int aa_apply_modes_to_perms (struct aa_profile*,struct aa_perms*) ;
 int aa_check_perms (struct aa_profile*,struct aa_perms*,int ,struct common_audit_data*,int ) ;
 unsigned int aa_dfa_next (int ,int ,int ) ;
 int aa_label_match (struct aa_profile*,struct aa_label*,unsigned int,int,int ,struct aa_perms*) ;
 TYPE_2__* aad (struct common_audit_data*) ;
 int audit_signal_cb ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static int profile_signal_perm(struct aa_profile *profile,
          struct aa_label *peer, u32 request,
          struct common_audit_data *sa)
{
 struct aa_perms perms;
 unsigned int state;

 if (profile_unconfined(profile) ||
     !PROFILE_MEDIATES(profile, AA_CLASS_SIGNAL))
  return 0;

 aad(sa)->peer = peer;

 state = aa_dfa_next(profile->policy.dfa,
       profile->policy.start[AA_CLASS_SIGNAL],
       aad(sa)->signal);
 aa_label_match(profile, peer, state, 0, request, &perms);
 aa_apply_modes_to_perms(profile, &perms);
 return aa_check_perms(profile, &perms, request, sa, audit_signal_cb);
}
