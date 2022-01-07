
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct regulatory_request {int dummy; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int NL80211_MCGRP_REGULATORY ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_allns (int *,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 int nl80211_reg_change_event_fill (struct sk_buff*,struct regulatory_request*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nl80211_common_reg_change_event(enum nl80211_commands cmd_id,
         struct regulatory_request *request)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, cmd_id);
 if (!hdr)
  goto nla_put_failure;

 if (!nl80211_reg_change_event_fill(msg, request))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 rcu_read_lock();
 genlmsg_multicast_allns(&nl80211_fam, msg, 0,
    NL80211_MCGRP_REGULATORY, GFP_ATOMIC);
 rcu_read_unlock();

 return;

nla_put_failure:
 nlmsg_free(msg);
}
