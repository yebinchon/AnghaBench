
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ipmr_seq; } ;
struct net {TYPE_1__ ipv6; } ;
struct mfc6_cache {int _c; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int RTNL_FAMILY_IP6MR ;
 int mr_call_mfc_notifiers (struct net*,int ,int,int *,int ,int *) ;

__attribute__((used)) static int call_ip6mr_mfc_entry_notifiers(struct net *net,
       enum fib_event_type event_type,
       struct mfc6_cache *mfc, u32 tb_id)
{
 return mr_call_mfc_notifiers(net, RTNL_FAMILY_IP6MR, event_type,
         &mfc->_c, tb_id, &net->ipv6.ipmr_seq);
}
