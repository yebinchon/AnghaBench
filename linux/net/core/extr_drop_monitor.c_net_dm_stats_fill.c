
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int EMSGSIZE ;
 int NET_DM_CMD_STATS_NEW ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int net_dm_hw_stats_put (struct sk_buff*) ;
 int net_dm_stats_put (struct sk_buff*) ;
 int net_drop_monitor_family ;

__attribute__((used)) static int net_dm_stats_fill(struct sk_buff *msg, struct genl_info *info)
{
 void *hdr;
 int rc;

 hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq,
     &net_drop_monitor_family, 0, NET_DM_CMD_STATS_NEW);
 if (!hdr)
  return -EMSGSIZE;

 rc = net_dm_stats_put(msg);
 if (rc)
  goto nla_put_failure;

 rc = net_dm_hw_stats_put(msg);
 if (rc)
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
