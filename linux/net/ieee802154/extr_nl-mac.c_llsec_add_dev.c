
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee802154_mlme_ops {TYPE_1__* llsec; } ;
struct ieee802154_llsec_device {int dummy; } ;
struct genl_info {int dummy; } ;
struct TYPE_2__ {int (* add_dev ) (struct net_device*,struct ieee802154_llsec_device*) ;} ;


 int EINVAL ;
 struct ieee802154_mlme_ops* ieee802154_mlme_ops (struct net_device*) ;
 scalar_t__ llsec_parse_dev (struct genl_info*,struct ieee802154_llsec_device*) ;
 int stub1 (struct net_device*,struct ieee802154_llsec_device*) ;

__attribute__((used)) static int llsec_add_dev(struct net_device *dev, struct genl_info *info)
{
 struct ieee802154_mlme_ops *ops = ieee802154_mlme_ops(dev);
 struct ieee802154_llsec_device desc;

 if (llsec_parse_dev(info, &desc))
  return -EINVAL;

 return ops->llsec->add_dev(dev, &desc);
}
