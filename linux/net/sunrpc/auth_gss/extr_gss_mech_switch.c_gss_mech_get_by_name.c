
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_api_mech {int dummy; } ;


 struct gss_api_mech* _gss_mech_get_by_name (char const*) ;
 int request_module (char*,char const*) ;

struct gss_api_mech * gss_mech_get_by_name(const char *name)
{
 struct gss_api_mech *gm = ((void*)0);

 gm = _gss_mech_get_by_name(name);
 if (!gm) {
  request_module("rpc-auth-gss-%s", name);
  gm = _gss_mech_get_by_name(name);
 }
 return gm;
}
