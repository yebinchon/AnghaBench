
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_phy_supported {int cca_ed_levels_size; int tx_powers_size; int lbt; scalar_t__ iftypes; int max_frame_retries; int min_frame_retries; int max_csma_backoffs; int min_csma_backoffs; int max_maxbe; int min_maxbe; int max_minbe; int min_minbe; scalar_t__ cca_opts; scalar_t__ cca_modes; int * tx_powers; int * cca_ed_levels; scalar_t__* channels; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int flags; struct wpan_phy_supported supported; } ;
struct cfg802154_registered_device {TYPE_1__ wpan_phy; } ;


 int ENOBUFS ;
 int IEEE802154_MAX_PAGE ;
 int NL802154_ATTR_WPAN_PHY_CAPS ;
 int NL802154_CAP_ATTR_CCA_ED_LEVELS ;
 int NL802154_CAP_ATTR_CCA_MODES ;
 int NL802154_CAP_ATTR_CCA_OPTS ;
 int NL802154_CAP_ATTR_CHANNELS ;
 int NL802154_CAP_ATTR_IFTYPES ;
 int NL802154_CAP_ATTR_LBT ;
 int NL802154_CAP_ATTR_MAX_CSMA_BACKOFFS ;
 int NL802154_CAP_ATTR_MAX_FRAME_RETRIES ;
 int NL802154_CAP_ATTR_MAX_MAXBE ;
 int NL802154_CAP_ATTR_MAX_MINBE ;
 int NL802154_CAP_ATTR_MIN_CSMA_BACKOFFS ;
 int NL802154_CAP_ATTR_MIN_FRAME_RETRIES ;
 int NL802154_CAP_ATTR_MIN_MAXBE ;
 int NL802154_CAP_ATTR_MIN_MINBE ;
 int NL802154_CAP_ATTR_TX_POWERS ;
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ;
 int WPAN_PHY_FLAG_CCA_MODE ;
 int WPAN_PHY_FLAG_TXPOWER ;
 scalar_t__ nl802154_put_flags (struct sk_buff*,int,scalar_t__) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int,int ) ;
 scalar_t__ nla_put_s8 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
nl802154_put_capabilities(struct sk_buff *msg,
     struct cfg802154_registered_device *rdev)
{
 const struct wpan_phy_supported *caps = &rdev->wpan_phy.supported;
 struct nlattr *nl_caps, *nl_channels;
 int i;

 nl_caps = nla_nest_start_noflag(msg, NL802154_ATTR_WPAN_PHY_CAPS);
 if (!nl_caps)
  return -ENOBUFS;

 nl_channels = nla_nest_start_noflag(msg, NL802154_CAP_ATTR_CHANNELS);
 if (!nl_channels)
  return -ENOBUFS;

 for (i = 0; i <= IEEE802154_MAX_PAGE; i++) {
  if (caps->channels[i]) {
   if (nl802154_put_flags(msg, i, caps->channels[i]))
    return -ENOBUFS;
  }
 }

 nla_nest_end(msg, nl_channels);

 if (rdev->wpan_phy.flags & WPAN_PHY_FLAG_CCA_ED_LEVEL) {
  struct nlattr *nl_ed_lvls;

  nl_ed_lvls = nla_nest_start_noflag(msg,
         NL802154_CAP_ATTR_CCA_ED_LEVELS);
  if (!nl_ed_lvls)
   return -ENOBUFS;

  for (i = 0; i < caps->cca_ed_levels_size; i++) {
   if (nla_put_s32(msg, i, caps->cca_ed_levels[i]))
    return -ENOBUFS;
  }

  nla_nest_end(msg, nl_ed_lvls);
 }

 if (rdev->wpan_phy.flags & WPAN_PHY_FLAG_TXPOWER) {
  struct nlattr *nl_tx_pwrs;

  nl_tx_pwrs = nla_nest_start_noflag(msg,
         NL802154_CAP_ATTR_TX_POWERS);
  if (!nl_tx_pwrs)
   return -ENOBUFS;

  for (i = 0; i < caps->tx_powers_size; i++) {
   if (nla_put_s32(msg, i, caps->tx_powers[i]))
    return -ENOBUFS;
  }

  nla_nest_end(msg, nl_tx_pwrs);
 }

 if (rdev->wpan_phy.flags & WPAN_PHY_FLAG_CCA_MODE) {
  if (nl802154_put_flags(msg, NL802154_CAP_ATTR_CCA_MODES,
           caps->cca_modes) ||
      nl802154_put_flags(msg, NL802154_CAP_ATTR_CCA_OPTS,
           caps->cca_opts))
   return -ENOBUFS;
 }

 if (nla_put_u8(msg, NL802154_CAP_ATTR_MIN_MINBE, caps->min_minbe) ||
     nla_put_u8(msg, NL802154_CAP_ATTR_MAX_MINBE, caps->max_minbe) ||
     nla_put_u8(msg, NL802154_CAP_ATTR_MIN_MAXBE, caps->min_maxbe) ||
     nla_put_u8(msg, NL802154_CAP_ATTR_MAX_MAXBE, caps->max_maxbe) ||
     nla_put_u8(msg, NL802154_CAP_ATTR_MIN_CSMA_BACKOFFS,
         caps->min_csma_backoffs) ||
     nla_put_u8(msg, NL802154_CAP_ATTR_MAX_CSMA_BACKOFFS,
         caps->max_csma_backoffs) ||
     nla_put_s8(msg, NL802154_CAP_ATTR_MIN_FRAME_RETRIES,
         caps->min_frame_retries) ||
     nla_put_s8(msg, NL802154_CAP_ATTR_MAX_FRAME_RETRIES,
         caps->max_frame_retries) ||
     nl802154_put_flags(msg, NL802154_CAP_ATTR_IFTYPES,
          caps->iftypes) ||
     nla_put_u32(msg, NL802154_CAP_ATTR_LBT, caps->lbt))
  return -ENOBUFS;

 nla_nest_end(msg, nl_caps);

 return 0;
}
