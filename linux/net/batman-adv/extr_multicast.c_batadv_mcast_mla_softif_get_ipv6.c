
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;
struct batadv_mcast_mla_flags {int dummy; } ;



__attribute__((used)) static inline int
batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
     struct hlist_head *mcast_list,
     struct batadv_mcast_mla_flags *flags)
{
 return 0;
}
