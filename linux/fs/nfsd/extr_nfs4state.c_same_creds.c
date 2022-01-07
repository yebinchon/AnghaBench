
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cred {scalar_t__ cr_principal; int cr_group_info; int cr_gid; int cr_uid; } ;


 int gid_eq (int ,int ) ;
 int groups_equal (int ,int ) ;
 scalar_t__ is_gss_cred (struct svc_cred*) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static bool
same_creds(struct svc_cred *cr1, struct svc_cred *cr2)
{
 if ((is_gss_cred(cr1) != is_gss_cred(cr2))
  || (!uid_eq(cr1->cr_uid, cr2->cr_uid))
  || (!gid_eq(cr1->cr_gid, cr2->cr_gid))
  || !groups_equal(cr1->cr_group_info, cr2->cr_group_info))
  return 0;

 if (cr1->cr_principal == cr2->cr_principal)
  return 1;
 if (!cr1->cr_principal || !cr2->cr_principal)
  return 0;
 return 0 == strcmp(cr1->cr_principal, cr2->cr_principal);
}
