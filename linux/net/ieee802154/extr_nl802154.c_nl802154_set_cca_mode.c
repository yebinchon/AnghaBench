
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpan_phy_cca {scalar_t__ mode; scalar_t__ opt; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; struct cfg802154_registered_device** user_ptr; } ;
struct TYPE_3__ {int cca_modes; int cca_opts; } ;
struct TYPE_4__ {int flags; TYPE_1__ supported; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; } ;


 int BIT (scalar_t__) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL802154_ATTR_CCA_MODE ;
 size_t NL802154_ATTR_CCA_OPT ;
 scalar_t__ NL802154_CCA_ATTR_MAX ;
 scalar_t__ NL802154_CCA_ENERGY ;
 scalar_t__ NL802154_CCA_ENERGY_CARRIER ;
 scalar_t__ NL802154_CCA_OPT_ATTR_MAX ;
 int WPAN_PHY_FLAG_CCA_MODE ;
 void* nla_get_u32 (int ) ;
 int rdev_set_cca_mode (struct cfg802154_registered_device*,struct wpan_phy_cca*) ;

__attribute__((used)) static int nl802154_set_cca_mode(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg802154_registered_device *rdev = info->user_ptr[0];
 struct wpan_phy_cca cca;

 if (!(rdev->wpan_phy.flags & WPAN_PHY_FLAG_CCA_MODE))
  return -EOPNOTSUPP;

 if (!info->attrs[NL802154_ATTR_CCA_MODE])
  return -EINVAL;

 cca.mode = nla_get_u32(info->attrs[NL802154_ATTR_CCA_MODE]);

 if (cca.mode < NL802154_CCA_ENERGY ||
     cca.mode > NL802154_CCA_ATTR_MAX ||
     !(rdev->wpan_phy.supported.cca_modes & BIT(cca.mode)))
  return -EINVAL;

 if (cca.mode == NL802154_CCA_ENERGY_CARRIER) {
  if (!info->attrs[NL802154_ATTR_CCA_OPT])
   return -EINVAL;

  cca.opt = nla_get_u32(info->attrs[NL802154_ATTR_CCA_OPT]);
  if (cca.opt > NL802154_CCA_OPT_ATTR_MAX ||
      !(rdev->wpan_phy.supported.cca_opts & BIT(cca.opt)))
   return -EINVAL;
 }

 return rdev_set_cca_mode(rdev, &cca);
}
