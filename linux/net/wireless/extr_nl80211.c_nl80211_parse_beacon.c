
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct cfg80211_beacon_data {int ftm_responder; void* civicloc_len; void* civicloc; void* lci_len; void* lci; void* probe_resp_len; void* probe_resp; void* assocresp_ies_len; void* assocresp_ies; void* proberesp_ies_len; void* proberesp_ies; void* beacon_ies_len; void* beacon_ies; void* tail_len; void* tail; void* head_len; void* head; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_BEACON_HEAD ;
 size_t NL80211_ATTR_BEACON_TAIL ;
 size_t NL80211_ATTR_FTM_RESPONDER ;
 size_t NL80211_ATTR_IE ;
 size_t NL80211_ATTR_IE_ASSOC_RESP ;
 size_t NL80211_ATTR_IE_PROBE_RESP ;
 size_t NL80211_ATTR_PROBE_RESP ;
 int NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER ;
 size_t NL80211_FTM_RESP_ATTR_CIVICLOC ;
 size_t NL80211_FTM_RESP_ATTR_ENABLED ;
 size_t NL80211_FTM_RESP_ATTR_LCI ;
 int NL80211_FTM_RESP_ATTR_MAX ;
 int memset (struct cfg80211_beacon_data*,int ,int) ;
 void* nla_data (struct nlattr*) ;
 void* nla_len (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 scalar_t__ wiphy_ext_feature_isset (int *,int ) ;

__attribute__((used)) static int nl80211_parse_beacon(struct cfg80211_registered_device *rdev,
    struct nlattr *attrs[],
    struct cfg80211_beacon_data *bcn)
{
 bool haveinfo = 0;
 int err;

 memset(bcn, 0, sizeof(*bcn));

 if (attrs[NL80211_ATTR_BEACON_HEAD]) {
  bcn->head = nla_data(attrs[NL80211_ATTR_BEACON_HEAD]);
  bcn->head_len = nla_len(attrs[NL80211_ATTR_BEACON_HEAD]);
  if (!bcn->head_len)
   return -EINVAL;
  haveinfo = 1;
 }

 if (attrs[NL80211_ATTR_BEACON_TAIL]) {
  bcn->tail = nla_data(attrs[NL80211_ATTR_BEACON_TAIL]);
  bcn->tail_len = nla_len(attrs[NL80211_ATTR_BEACON_TAIL]);
  haveinfo = 1;
 }

 if (!haveinfo)
  return -EINVAL;

 if (attrs[NL80211_ATTR_IE]) {
  bcn->beacon_ies = nla_data(attrs[NL80211_ATTR_IE]);
  bcn->beacon_ies_len = nla_len(attrs[NL80211_ATTR_IE]);
 }

 if (attrs[NL80211_ATTR_IE_PROBE_RESP]) {
  bcn->proberesp_ies =
   nla_data(attrs[NL80211_ATTR_IE_PROBE_RESP]);
  bcn->proberesp_ies_len =
   nla_len(attrs[NL80211_ATTR_IE_PROBE_RESP]);
 }

 if (attrs[NL80211_ATTR_IE_ASSOC_RESP]) {
  bcn->assocresp_ies =
   nla_data(attrs[NL80211_ATTR_IE_ASSOC_RESP]);
  bcn->assocresp_ies_len =
   nla_len(attrs[NL80211_ATTR_IE_ASSOC_RESP]);
 }

 if (attrs[NL80211_ATTR_PROBE_RESP]) {
  bcn->probe_resp = nla_data(attrs[NL80211_ATTR_PROBE_RESP]);
  bcn->probe_resp_len = nla_len(attrs[NL80211_ATTR_PROBE_RESP]);
 }

 if (attrs[NL80211_ATTR_FTM_RESPONDER]) {
  struct nlattr *tb[NL80211_FTM_RESP_ATTR_MAX + 1];

  err = nla_parse_nested_deprecated(tb,
        NL80211_FTM_RESP_ATTR_MAX,
        attrs[NL80211_ATTR_FTM_RESPONDER],
        ((void*)0), ((void*)0));
  if (err)
   return err;

  if (tb[NL80211_FTM_RESP_ATTR_ENABLED] &&
      wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER))
   bcn->ftm_responder = 1;
  else
   return -EOPNOTSUPP;

  if (tb[NL80211_FTM_RESP_ATTR_LCI]) {
   bcn->lci = nla_data(tb[NL80211_FTM_RESP_ATTR_LCI]);
   bcn->lci_len = nla_len(tb[NL80211_FTM_RESP_ATTR_LCI]);
  }

  if (tb[NL80211_FTM_RESP_ATTR_CIVICLOC]) {
   bcn->civicloc = nla_data(tb[NL80211_FTM_RESP_ATTR_CIVICLOC]);
   bcn->civicloc_len = nla_len(tb[NL80211_FTM_RESP_ATTR_CIVICLOC]);
  }
 } else {
  bcn->ftm_responder = -1;
 }

 return 0;
}
