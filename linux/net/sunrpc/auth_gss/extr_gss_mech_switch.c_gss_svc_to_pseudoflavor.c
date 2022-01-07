
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct gss_api_mech {int gm_pf_num; TYPE_1__* gm_pfs; } ;
typedef int rpc_authflavor_t ;
struct TYPE_2__ {scalar_t__ qop; scalar_t__ service; int pseudoflavor; } ;


 int RPC_AUTH_MAXFLAVOR ;

rpc_authflavor_t gss_svc_to_pseudoflavor(struct gss_api_mech *gm, u32 qop,
      u32 service)
{
 int i;

 for (i = 0; i < gm->gm_pf_num; i++) {
  if (gm->gm_pfs[i].qop == qop &&
      gm->gm_pfs[i].service == service) {
   return gm->gm_pfs[i].pseudoflavor;
  }
 }
 return RPC_AUTH_MAXFLAVOR;
}
