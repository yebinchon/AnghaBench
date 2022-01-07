
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_type_offload {int proto; } ;
struct xfrm_state_afinfo {struct xfrm_type_offload const* type_offload_esp; } ;



 int WARN_ON (int) ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (unsigned short) ;

void xfrm_unregister_type_offload(const struct xfrm_type_offload *type,
      unsigned short family)
{
 struct xfrm_state_afinfo *afinfo = xfrm_state_get_afinfo(family);

 if (unlikely(afinfo == ((void*)0)))
  return;

 switch (type->proto) {
 case 128:
  WARN_ON(afinfo->type_offload_esp != type);
  afinfo->type_offload_esp = ((void*)0);
  break;
 default:
  WARN_ON(1);
  break;
 }
 rcu_read_unlock();
}
