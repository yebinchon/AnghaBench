
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_dm_hw_entries {int dummy; } ;
struct net_dm_alert_msg {int member_0; } ;
typedef int anc_hdr ;


 int EMSGSIZE ;
 int NET_DM_CMD_ALERT ;
 int NLA_UNSPEC ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int net_dm_hw_entries_put (struct sk_buff*,struct net_dm_hw_entries const*) ;
 int net_drop_monitor_family ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct net_dm_alert_msg*) ;

__attribute__((used)) static int
net_dm_hw_summary_report_fill(struct sk_buff *msg,
         const struct net_dm_hw_entries *hw_entries)
{
 struct net_dm_alert_msg anc_hdr = { 0 };
 void *hdr;
 int rc;

 hdr = genlmsg_put(msg, 0, 0, &net_drop_monitor_family, 0,
     NET_DM_CMD_ALERT);
 if (!hdr)
  return -EMSGSIZE;




 if (nla_put(msg, NLA_UNSPEC, sizeof(anc_hdr), &anc_hdr))
  goto nla_put_failure;

 rc = net_dm_hw_entries_put(msg, hw_entries);
 if (rc)
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
