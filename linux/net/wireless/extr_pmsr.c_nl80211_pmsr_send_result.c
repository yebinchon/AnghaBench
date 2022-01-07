
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_pmsr_result {int type; scalar_t__ final; int ap_tsf; scalar_t__ ap_tsf_valid; int host_time; int status; int addr; } ;


 int ENOSPC ;
 int ETH_ALEN ;
 int NL80211_ATTR_PEER_MEASUREMENTS ;
 int NL80211_PMSR_ATTR_PEERS ;
 int NL80211_PMSR_PEER_ATTR_ADDR ;
 int NL80211_PMSR_PEER_ATTR_RESP ;
 int NL80211_PMSR_RESP_ATTR_AP_TSF ;
 int NL80211_PMSR_RESP_ATTR_DATA ;
 int NL80211_PMSR_RESP_ATTR_FINAL ;
 int NL80211_PMSR_RESP_ATTR_HOST_TIME ;
 int NL80211_PMSR_RESP_ATTR_PAD ;
 int NL80211_PMSR_RESP_ATTR_STATUS ;

 int WARN_ON (int) ;
 int nl80211_pmsr_send_ftm_res (struct sk_buff*,struct cfg80211_pmsr_result*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int nl80211_pmsr_send_result(struct sk_buff *msg,
        struct cfg80211_pmsr_result *res)
{
 struct nlattr *pmsr, *peers, *peer, *resp, *data, *typedata;

 pmsr = nla_nest_start_noflag(msg, NL80211_ATTR_PEER_MEASUREMENTS);
 if (!pmsr)
  goto error;

 peers = nla_nest_start_noflag(msg, NL80211_PMSR_ATTR_PEERS);
 if (!peers)
  goto error;

 peer = nla_nest_start_noflag(msg, 1);
 if (!peer)
  goto error;

 if (nla_put(msg, NL80211_PMSR_PEER_ATTR_ADDR, ETH_ALEN, res->addr))
  goto error;

 resp = nla_nest_start_noflag(msg, NL80211_PMSR_PEER_ATTR_RESP);
 if (!resp)
  goto error;

 if (nla_put_u32(msg, NL80211_PMSR_RESP_ATTR_STATUS, res->status) ||
     nla_put_u64_64bit(msg, NL80211_PMSR_RESP_ATTR_HOST_TIME,
         res->host_time, NL80211_PMSR_RESP_ATTR_PAD))
  goto error;

 if (res->ap_tsf_valid &&
     nla_put_u64_64bit(msg, NL80211_PMSR_RESP_ATTR_AP_TSF,
         res->ap_tsf, NL80211_PMSR_RESP_ATTR_PAD))
  goto error;

 if (res->final && nla_put_flag(msg, NL80211_PMSR_RESP_ATTR_FINAL))
  goto error;

 data = nla_nest_start_noflag(msg, NL80211_PMSR_RESP_ATTR_DATA);
 if (!data)
  goto error;

 typedata = nla_nest_start_noflag(msg, res->type);
 if (!typedata)
  goto error;

 switch (res->type) {
 case 128:
  if (nl80211_pmsr_send_ftm_res(msg, res))
   goto error;
  break;
 default:
  WARN_ON(1);
 }

 nla_nest_end(msg, typedata);
 nla_nest_end(msg, data);
 nla_nest_end(msg, resp);
 nla_nest_end(msg, peer);
 nla_nest_end(msg, peers);
 nla_nest_end(msg, pmsr);

 return 0;
error:
 return -ENOSPC;
}
