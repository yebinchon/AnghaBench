
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ preambles; scalar_t__ bandwidths; scalar_t__ max_bursts_exponent; scalar_t__ max_ftms_per_burst; scalar_t__ request_civicloc; scalar_t__ request_lci; scalar_t__ non_asap; scalar_t__ asap; int supported; } ;
struct cfg80211_pmsr_capabilities {TYPE_1__ ftm; } ;


 int ENOBUFS ;
 int NL80211_PMSR_FTM_CAPA_ATTR_ASAP ;
 int NL80211_PMSR_FTM_CAPA_ATTR_BANDWIDTHS ;
 int NL80211_PMSR_FTM_CAPA_ATTR_MAX_BURSTS_EXPONENT ;
 int NL80211_PMSR_FTM_CAPA_ATTR_MAX_FTMS_PER_BURST ;
 int NL80211_PMSR_FTM_CAPA_ATTR_NON_ASAP ;
 int NL80211_PMSR_FTM_CAPA_ATTR_PREAMBLES ;
 int NL80211_PMSR_FTM_CAPA_ATTR_REQ_CIVICLOC ;
 int NL80211_PMSR_FTM_CAPA_ATTR_REQ_LCI ;
 int NL80211_PMSR_TYPE_FTM ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int
nl80211_send_pmsr_ftm_capa(const struct cfg80211_pmsr_capabilities *cap,
      struct sk_buff *msg)
{
 struct nlattr *ftm;

 if (!cap->ftm.supported)
  return 0;

 ftm = nla_nest_start_noflag(msg, NL80211_PMSR_TYPE_FTM);
 if (!ftm)
  return -ENOBUFS;

 if (cap->ftm.asap && nla_put_flag(msg, NL80211_PMSR_FTM_CAPA_ATTR_ASAP))
  return -ENOBUFS;
 if (cap->ftm.non_asap &&
     nla_put_flag(msg, NL80211_PMSR_FTM_CAPA_ATTR_NON_ASAP))
  return -ENOBUFS;
 if (cap->ftm.request_lci &&
     nla_put_flag(msg, NL80211_PMSR_FTM_CAPA_ATTR_REQ_LCI))
  return -ENOBUFS;
 if (cap->ftm.request_civicloc &&
     nla_put_flag(msg, NL80211_PMSR_FTM_CAPA_ATTR_REQ_CIVICLOC))
  return -ENOBUFS;
 if (nla_put_u32(msg, NL80211_PMSR_FTM_CAPA_ATTR_PREAMBLES,
   cap->ftm.preambles))
  return -ENOBUFS;
 if (nla_put_u32(msg, NL80211_PMSR_FTM_CAPA_ATTR_BANDWIDTHS,
   cap->ftm.bandwidths))
  return -ENOBUFS;
 if (cap->ftm.max_bursts_exponent >= 0 &&
     nla_put_u32(msg, NL80211_PMSR_FTM_CAPA_ATTR_MAX_BURSTS_EXPONENT,
   cap->ftm.max_bursts_exponent))
  return -ENOBUFS;
 if (cap->ftm.max_ftms_per_burst &&
     nla_put_u32(msg, NL80211_PMSR_FTM_CAPA_ATTR_MAX_FTMS_PER_BURST,
   cap->ftm.max_ftms_per_burst))
  return -ENOBUFS;

 nla_nest_end(msg, ftm);
 return 0;
}
