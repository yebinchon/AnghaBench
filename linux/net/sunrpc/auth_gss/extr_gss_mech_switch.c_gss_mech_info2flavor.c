
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcsec_gss_info {int service; int qop; int oid; } ;
struct gss_api_mech {int dummy; } ;
typedef int rpc_authflavor_t ;


 int RPC_AUTH_MAXFLAVOR ;
 struct gss_api_mech* gss_mech_get_by_OID (int *) ;
 int gss_mech_put (struct gss_api_mech*) ;
 int gss_svc_to_pseudoflavor (struct gss_api_mech*,int ,int ) ;

rpc_authflavor_t gss_mech_info2flavor(struct rpcsec_gss_info *info)
{
 rpc_authflavor_t pseudoflavor;
 struct gss_api_mech *gm;

 gm = gss_mech_get_by_OID(&info->oid);
 if (gm == ((void*)0))
  return RPC_AUTH_MAXFLAVOR;

 pseudoflavor = gss_svc_to_pseudoflavor(gm, info->qop, info->service);

 gss_mech_put(gm);
 return pseudoflavor;
}
