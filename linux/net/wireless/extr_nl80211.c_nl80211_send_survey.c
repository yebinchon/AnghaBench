
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct survey_info {int filled; int time_bss_rx; int time_scan; int time_tx; int time_rx; int time_ext_busy; int time_busy; int time; int noise; TYPE_1__* channel; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int center_freq; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_SURVEY_INFO ;
 int NL80211_CMD_NEW_SURVEY_RESULTS ;
 int NL80211_SURVEY_INFO_FREQUENCY ;
 int NL80211_SURVEY_INFO_IN_USE ;
 int NL80211_SURVEY_INFO_NOISE ;
 int NL80211_SURVEY_INFO_PAD ;
 int NL80211_SURVEY_INFO_TIME ;
 int NL80211_SURVEY_INFO_TIME_BSS_RX ;
 int NL80211_SURVEY_INFO_TIME_BUSY ;
 int NL80211_SURVEY_INFO_TIME_EXT_BUSY ;
 int NL80211_SURVEY_INFO_TIME_RX ;
 int NL80211_SURVEY_INFO_TIME_SCAN ;
 int NL80211_SURVEY_INFO_TIME_TX ;
 int SURVEY_INFO_IN_USE ;
 int SURVEY_INFO_NOISE_DBM ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BSS_RX ;
 int SURVEY_INFO_TIME_BUSY ;
 int SURVEY_INFO_TIME_EXT_BUSY ;
 int SURVEY_INFO_TIME_RX ;
 int SURVEY_INFO_TIME_SCAN ;
 int SURVEY_INFO_TIME_TX ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nl80211_send_survey(struct sk_buff *msg, u32 portid, u32 seq,
          int flags, struct net_device *dev,
          bool allow_radio_stats,
          struct survey_info *survey)
{
 void *hdr;
 struct nlattr *infoattr;


 if (!survey->channel && !allow_radio_stats)
  return 0;

 hdr = nl80211hdr_put(msg, portid, seq, flags,
        NL80211_CMD_NEW_SURVEY_RESULTS);
 if (!hdr)
  return -ENOMEM;

 if (nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
  goto nla_put_failure;

 infoattr = nla_nest_start_noflag(msg, NL80211_ATTR_SURVEY_INFO);
 if (!infoattr)
  goto nla_put_failure;

 if (survey->channel &&
     nla_put_u32(msg, NL80211_SURVEY_INFO_FREQUENCY,
   survey->channel->center_freq))
  goto nla_put_failure;

 if ((survey->filled & SURVEY_INFO_NOISE_DBM) &&
     nla_put_u8(msg, NL80211_SURVEY_INFO_NOISE, survey->noise))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_IN_USE) &&
     nla_put_flag(msg, NL80211_SURVEY_INFO_IN_USE))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME,
   survey->time, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME_BUSY) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_BUSY,
         survey->time_busy, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME_EXT_BUSY) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_EXT_BUSY,
         survey->time_ext_busy, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME_RX) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_RX,
         survey->time_rx, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME_TX) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_TX,
         survey->time_tx, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME_SCAN) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_SCAN,
         survey->time_scan, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_TIME_BSS_RX) &&
     nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_BSS_RX,
         survey->time_bss_rx, NL80211_SURVEY_INFO_PAD))
  goto nla_put_failure;

 nla_nest_end(msg, infoattr);

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
