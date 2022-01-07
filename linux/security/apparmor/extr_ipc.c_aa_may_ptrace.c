
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int DEFINE_AUDIT_DATA (int ,int ,int ) ;
 int LSM_AUDIT_DATA_NONE ;
 int OP_PTRACE ;
 int PTRACE_PERM_SHIFT ;
 int profile_tracee_perm (struct aa_profile*,struct aa_label*,int,int *) ;
 int profile_tracer_perm (struct aa_profile*,struct aa_label*,int,int *) ;
 int sa ;
 int xcheck_labels (struct aa_label*,struct aa_label*,struct aa_profile*,int ,int ) ;

int aa_may_ptrace(struct aa_label *tracer, struct aa_label *tracee,
    u32 request)
{
 struct aa_profile *profile;
 u32 xrequest = request << PTRACE_PERM_SHIFT;
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, OP_PTRACE);

 return xcheck_labels(tracer, tracee, profile,
   profile_tracer_perm(profile, tracee, request, &sa),
   profile_tracee_perm(profile, tracer, xrequest, &sa));
}
