
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int ieee802154_nl_llsec_change (struct sk_buff*,struct genl_info*,int ) ;
 int llsec_remove_key ;

int ieee802154_llsec_del_key(struct sk_buff *skb, struct genl_info *info)
{
 return ieee802154_nl_llsec_change(skb, info, llsec_remove_key);
}
