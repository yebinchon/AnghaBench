
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int ieee802154_llsec_dump_table (struct sk_buff*,struct netlink_callback*,int ) ;
 int llsec_iter_devkeys ;

int ieee802154_llsec_dump_devkeys(struct sk_buff *skb,
      struct netlink_callback *cb)
{
 return ieee802154_llsec_dump_table(skb, cb, llsec_iter_devkeys);
}
