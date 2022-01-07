
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int DEFINE_AUDIT_NET (int ,char const*,int *,int ,int,int) ;
 int aa_profile_af_perm (struct aa_profile*,int *,int ,int ,int) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int sa ;

int aa_af_perm(struct aa_label *label, const char *op, u32 request, u16 family,
        int type, int protocol)
{
 struct aa_profile *profile;
 DEFINE_AUDIT_NET(sa, op, ((void*)0), family, type, protocol);

 return fn_for_each_confined(label, profile,
   aa_profile_af_perm(profile, &sa, request, family,
        type));
}
