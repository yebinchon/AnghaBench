
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct batadv_priv** user_ptr; } ;
struct TYPE_2__ {int throughput_override; int elp_interval; } ;
struct batadv_priv {TYPE_1__ bat_v; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 size_t BATADV_ATTR_ELP_INTERVAL ;
 size_t BATADV_ATTR_THROUGHPUT_OVERRIDE ;
 int atomic_set (int *,int ) ;
 int batadv_netlink_notify_hardif (struct batadv_priv*,struct batadv_priv*) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int batadv_netlink_set_hardif(struct sk_buff *skb,
         struct genl_info *info)
{
 struct batadv_hard_iface *hard_iface = info->user_ptr[1];
 struct batadv_priv *bat_priv = info->user_ptr[0];
 batadv_netlink_notify_hardif(bat_priv, hard_iface);

 return 0;
}
