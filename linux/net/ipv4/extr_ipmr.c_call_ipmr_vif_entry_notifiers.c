
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vifi_t ;
typedef int u32 ;
struct vif_device {int dummy; } ;
struct TYPE_2__ {int ipmr_seq; } ;
struct net {TYPE_1__ ipv4; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int RTNL_FAMILY_IPMR ;
 int mr_call_vif_notifiers (struct net*,int ,int,struct vif_device*,int ,int ,int *) ;

__attribute__((used)) static int call_ipmr_vif_entry_notifiers(struct net *net,
      enum fib_event_type event_type,
      struct vif_device *vif,
      vifi_t vif_index, u32 tb_id)
{
 return mr_call_vif_notifiers(net, RTNL_FAMILY_IPMR, event_type,
         vif, vif_index, tb_id,
         &net->ipv4.ipmr_seq);
}
