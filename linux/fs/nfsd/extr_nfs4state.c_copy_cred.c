
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cred {scalar_t__ cr_gss_mech; int cr_group_info; int cr_gid; int cr_uid; int cr_flavor; void* cr_targ_princ; void* cr_raw_principal; void* cr_principal; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int get_group_info (int ) ;
 int gss_mech_get (scalar_t__) ;
 void* kstrdup (void*,int ) ;

__attribute__((used)) static int copy_cred(struct svc_cred *target, struct svc_cred *source)
{
 target->cr_principal = kstrdup(source->cr_principal, GFP_KERNEL);
 target->cr_raw_principal = kstrdup(source->cr_raw_principal,
        GFP_KERNEL);
 target->cr_targ_princ = kstrdup(source->cr_targ_princ, GFP_KERNEL);
 if ((source->cr_principal && !target->cr_principal) ||
     (source->cr_raw_principal && !target->cr_raw_principal) ||
     (source->cr_targ_princ && !target->cr_targ_princ))
  return -ENOMEM;

 target->cr_flavor = source->cr_flavor;
 target->cr_uid = source->cr_uid;
 target->cr_gid = source->cr_gid;
 target->cr_group_info = source->cr_group_info;
 get_group_info(target->cr_group_info);
 target->cr_gss_mech = source->cr_gss_mech;
 if (source->cr_gss_mech)
  gss_mech_get(source->cr_gss_mech);
 return 0;
}
