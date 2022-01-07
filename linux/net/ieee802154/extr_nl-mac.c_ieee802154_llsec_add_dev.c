
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {TYPE_1__* nlhdr; } ;
struct TYPE_2__ {int nlmsg_flags; } ;


 int EINVAL ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int ieee802154_nl_llsec_change (struct sk_buff*,struct genl_info*,int ) ;
 int llsec_add_dev ;

int ieee802154_llsec_add_dev(struct sk_buff *skb, struct genl_info *info)
{
 if ((info->nlhdr->nlmsg_flags & (NLM_F_CREATE | NLM_F_EXCL)) !=
     (NLM_F_CREATE | NLM_F_EXCL))
  return -EINVAL;

 return ieee802154_nl_llsec_change(skb, info, llsec_add_dev);
}
