
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gss_api_mech {int dummy; } ;


 struct gss_api_mech* _gss_mech_get_by_pseudoflavor (int ) ;
 int request_module (char*,int ) ;

struct gss_api_mech *
gss_mech_get_by_pseudoflavor(u32 pseudoflavor)
{
 struct gss_api_mech *gm;

 gm = _gss_mech_get_by_pseudoflavor(pseudoflavor);

 if (!gm) {
  request_module("rpc-auth-gss-%u", pseudoflavor);
  gm = _gss_mech_get_by_pseudoflavor(pseudoflavor);
 }
 return gm;
}
