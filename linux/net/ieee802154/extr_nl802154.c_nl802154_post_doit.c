
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_dev {struct wpan_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wpan_dev** user_ptr; } ;


 int NL802154_FLAG_NEED_RTNL ;
 int NL802154_FLAG_NEED_WPAN_DEV ;
 int dev_put (struct wpan_dev*) ;
 int rtnl_unlock () ;

__attribute__((used)) static void nl802154_post_doit(const struct genl_ops *ops, struct sk_buff *skb,
          struct genl_info *info)
{
 if (info->user_ptr[1]) {
  if (ops->internal_flags & NL802154_FLAG_NEED_WPAN_DEV) {
   struct wpan_dev *wpan_dev = info->user_ptr[1];

   if (wpan_dev->netdev)
    dev_put(wpan_dev->netdev);
  } else {
   dev_put(info->user_ptr[1]);
  }
 }

 if (ops->internal_flags & NL802154_FLAG_NEED_RTNL)
  rtnl_unlock();
}
