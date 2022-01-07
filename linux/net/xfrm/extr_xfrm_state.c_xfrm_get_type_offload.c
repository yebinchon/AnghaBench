
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_type_offload {int owner; } ;
struct xfrm_state_afinfo {struct xfrm_type_offload* type_offload_esp; } ;



 int rcu_read_unlock () ;
 int request_module (char*,unsigned short,int) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (unsigned short) ;

__attribute__((used)) static const struct xfrm_type_offload *
xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
{
 const struct xfrm_type_offload *type = ((void*)0);
 struct xfrm_state_afinfo *afinfo;

retry:
 afinfo = xfrm_state_get_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return ((void*)0);

 switch (proto) {
 case 128:
  type = afinfo->type_offload_esp;
  break;
 default:
  break;
 }

 if ((type && !try_module_get(type->owner)))
  type = ((void*)0);

 rcu_read_unlock();

 if (!type && try_load) {
  request_module("xfrm-offload-%d-%d", family, proto);
  try_load = 0;
  goto retry;
 }

 return type;
}
