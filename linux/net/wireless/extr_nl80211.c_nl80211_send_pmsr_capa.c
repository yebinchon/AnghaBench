
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {struct cfg80211_pmsr_capabilities* pmsr_capa; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
struct cfg80211_pmsr_capabilities {scalar_t__ randomize_mac_addr; scalar_t__ report_ap_tsf; int max_peers; } ;


 int ENOBUFS ;
 int NL80211_ATTR_PEER_MEASUREMENTS ;
 int NL80211_PMSR_ATTR_MAX_PEERS ;
 int NL80211_PMSR_ATTR_RANDOMIZE_MAC_ADDR ;
 int NL80211_PMSR_ATTR_REPORT_AP_TSF ;
 int NL80211_PMSR_ATTR_TYPE_CAPA ;
 scalar_t__ nl80211_send_pmsr_ftm_capa (struct cfg80211_pmsr_capabilities const*,struct sk_buff*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nl80211_send_pmsr_capa(struct cfg80211_registered_device *rdev,
      struct sk_buff *msg)
{
 const struct cfg80211_pmsr_capabilities *cap = rdev->wiphy.pmsr_capa;
 struct nlattr *pmsr, *caps;

 if (!cap)
  return 0;






 pmsr = nla_nest_start_noflag(msg, NL80211_ATTR_PEER_MEASUREMENTS);
 if (!pmsr)
  return -ENOBUFS;

 if (nla_put_u32(msg, NL80211_PMSR_ATTR_MAX_PEERS, cap->max_peers))
  return -ENOBUFS;

 if (cap->report_ap_tsf &&
     nla_put_flag(msg, NL80211_PMSR_ATTR_REPORT_AP_TSF))
  return -ENOBUFS;

 if (cap->randomize_mac_addr &&
     nla_put_flag(msg, NL80211_PMSR_ATTR_RANDOMIZE_MAC_ADDR))
  return -ENOBUFS;

 caps = nla_nest_start_noflag(msg, NL80211_PMSR_ATTR_TYPE_CAPA);
 if (!caps)
  return -ENOBUFS;

 if (nl80211_send_pmsr_ftm_capa(cap, msg))
  return -ENOBUFS;

 nla_nest_end(msg, caps);
 nla_nest_end(msg, pmsr);

 return 0;
}
