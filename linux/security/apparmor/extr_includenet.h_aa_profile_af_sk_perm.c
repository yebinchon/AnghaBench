
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int sk_type; int sk_family; } ;
struct common_audit_data {int dummy; } ;
struct aa_profile {int dummy; } ;


 int aa_profile_af_perm (struct aa_profile*,struct common_audit_data*,int ,int ,int ) ;

__attribute__((used)) static inline int aa_profile_af_sk_perm(struct aa_profile *profile,
     struct common_audit_data *sa,
     u32 request,
     struct sock *sk)
{
 return aa_profile_af_perm(profile, sa, request, sk->sk_family,
      sk->sk_type);
}
