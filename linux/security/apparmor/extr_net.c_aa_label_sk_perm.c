
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int DEFINE_AUDIT_SK (int ,char const*,struct sock*) ;
 int aa_profile_af_sk_perm (struct aa_profile*,int *,int ,struct sock*) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int sa ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int aa_label_sk_perm(struct aa_label *label, const char *op, u32 request,
       struct sock *sk)
{
 int error = 0;

 AA_BUG(!label);
 AA_BUG(!sk);

 if (!unconfined(label)) {
  struct aa_profile *profile;
  DEFINE_AUDIT_SK(sa, op, sk);

  error = fn_for_each_confined(label, profile,
       aa_profile_af_sk_perm(profile, &sa, request, sk));
 }

 return error;
}
