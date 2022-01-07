
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct common_audit_data {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_CLASS_PTRACE ;
 int PROFILE_MEDIATES (struct aa_profile*,int ) ;
 int profile_ptrace_perm (struct aa_profile*,struct aa_label*,int ,struct common_audit_data*) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;
 scalar_t__ unconfined (struct aa_label*) ;

__attribute__((used)) static int profile_tracee_perm(struct aa_profile *tracee,
          struct aa_label *tracer, u32 request,
          struct common_audit_data *sa)
{
 if (profile_unconfined(tracee) || unconfined(tracer) ||
     !PROFILE_MEDIATES(tracee, AA_CLASS_PTRACE))
  return 0;

 return profile_ptrace_perm(tracee, tracer, request, sa);
}
