
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct __ip6_tnl_parm {int erspan_ver; int hwid; void* dir; int index; } ;


 size_t IFLA_GRE_ERSPAN_DIR ;
 size_t IFLA_GRE_ERSPAN_HWID ;
 size_t IFLA_GRE_ERSPAN_INDEX ;
 size_t IFLA_GRE_ERSPAN_VER ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static void ip6erspan_set_version(struct nlattr *data[],
      struct __ip6_tnl_parm *parms)
{
 if (!data)
  return;

 parms->erspan_ver = 1;
 if (data[IFLA_GRE_ERSPAN_VER])
  parms->erspan_ver = nla_get_u8(data[IFLA_GRE_ERSPAN_VER]);

 if (parms->erspan_ver == 1) {
  if (data[IFLA_GRE_ERSPAN_INDEX])
   parms->index = nla_get_u32(data[IFLA_GRE_ERSPAN_INDEX]);
 } else if (parms->erspan_ver == 2) {
  if (data[IFLA_GRE_ERSPAN_DIR])
   parms->dir = nla_get_u8(data[IFLA_GRE_ERSPAN_DIR]);
  if (data[IFLA_GRE_ERSPAN_HWID])
   parms->hwid = nla_get_u16(data[IFLA_GRE_ERSPAN_HWID]);
 }
}
