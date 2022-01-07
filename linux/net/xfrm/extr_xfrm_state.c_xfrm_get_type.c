
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_type {int owner; } ;
struct xfrm_state_afinfo {struct xfrm_type* type_ipip6; struct xfrm_type* type_routing; struct xfrm_type* type_dstopts; struct xfrm_type* type_ipip; struct xfrm_type* type_esp; struct xfrm_type* type_ah; struct xfrm_type* type_comp; } ;
 int rcu_read_unlock () ;
 int request_module (char*,unsigned short,int) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (unsigned short) ;

__attribute__((used)) static const struct xfrm_type *xfrm_get_type(u8 proto, unsigned short family)
{
 const struct xfrm_type *type = ((void*)0);
 struct xfrm_state_afinfo *afinfo;
 int modload_attempted = 0;

retry:
 afinfo = xfrm_state_get_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return ((void*)0);

 switch (proto) {
 case 133:
  type = afinfo->type_comp;
  break;
 case 134:
  type = afinfo->type_ah;
  break;
 case 131:
  type = afinfo->type_esp;
  break;
 case 130:
  type = afinfo->type_ipip;
  break;
 case 132:
  type = afinfo->type_dstopts;
  break;
 case 128:
  type = afinfo->type_routing;
  break;
 case 129:
  type = afinfo->type_ipip6;
  break;
 default:
  break;
 }

 if (unlikely(type && !try_module_get(type->owner)))
  type = ((void*)0);

 rcu_read_unlock();

 if (!type && !modload_attempted) {
  request_module("xfrm-type-%d-%d", family, proto);
  modload_attempted = 1;
  goto retry;
 }

 return type;
}
