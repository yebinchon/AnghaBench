
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct common_audit_data {int dummy; } ;
struct aa_label {int dummy; } ;
struct aa_profile {struct aa_label label; } ;
struct TYPE_2__ {int error; scalar_t__ request; struct aa_label* peer; struct aa_label* label; } ;


 int AA_CLASS_PTRACE ;
 int AUDIT_APPARMOR_AUTO ;
 int CAP_OPT_NONE ;
 int CAP_SYS_PTRACE ;
 scalar_t__ PROFILE_MEDIATES (struct aa_profile*,int ) ;
 int aa_audit (int ,struct aa_profile*,struct common_audit_data*,int ) ;
 int aa_capable (struct aa_label*,int ,int ) ;
 TYPE_1__* aad (struct common_audit_data*) ;
 int audit_ptrace_cb ;
 int profile_ptrace_perm (struct aa_profile*,struct aa_label*,int ,struct common_audit_data*) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static int profile_tracer_perm(struct aa_profile *tracer,
          struct aa_label *tracee, u32 request,
          struct common_audit_data *sa)
{
 if (profile_unconfined(tracer))
  return 0;

 if (PROFILE_MEDIATES(tracer, AA_CLASS_PTRACE))
  return profile_ptrace_perm(tracer, tracee, request, sa);


 if (&tracer->label == tracee)
  return 0;

 aad(sa)->label = &tracer->label;
 aad(sa)->peer = tracee;
 aad(sa)->request = 0;
 aad(sa)->error = aa_capable(&tracer->label, CAP_SYS_PTRACE,
        CAP_OPT_NONE);

 return aa_audit(AUDIT_APPARMOR_AUTO, tracer, sa, audit_ptrace_cb);
}
