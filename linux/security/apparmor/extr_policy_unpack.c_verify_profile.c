
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ trans; scalar_t__ dfa; } ;
struct aa_profile {TYPE_2__ file; } ;


 int EPROTO ;
 int audit_iface (struct aa_profile*,int *,int *,char*,int *,int) ;
 int verify_dfa_xindex (scalar_t__,int ) ;

__attribute__((used)) static int verify_profile(struct aa_profile *profile)
{
 if (profile->file.dfa &&
     !verify_dfa_xindex(profile->file.dfa,
          profile->file.trans.size)) {
  audit_iface(profile, ((void*)0), ((void*)0), "Invalid named transition",
       ((void*)0), -EPROTO);
  return -EPROTO;
 }

 return 0;
}
