
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct common_audit_data {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {struct aa_label* peer; } ;


 int AA_CLASS_PTRACE ;
 int aa_apply_modes_to_perms (struct aa_profile*,struct aa_perms*) ;
 int aa_check_perms (struct aa_profile*,struct aa_perms*,int ,struct common_audit_data*,int ) ;
 int aa_profile_match_label (struct aa_profile*,struct aa_label*,int ,int ,struct aa_perms*) ;
 TYPE_1__* aad (struct common_audit_data*) ;
 int audit_ptrace_cb ;

__attribute__((used)) static int profile_ptrace_perm(struct aa_profile *profile,
        struct aa_label *peer, u32 request,
        struct common_audit_data *sa)
{
 struct aa_perms perms = { };

 aad(sa)->peer = peer;
 aa_profile_match_label(profile, peer, AA_CLASS_PTRACE, request,
          &perms);
 aa_apply_modes_to_perms(profile, &perms);
 return aa_check_perms(profile, &perms, request, sa, audit_ptrace_cb);
}
