
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int EMSGSIZE ;
 int NET_DM_ATTR_ALERT_MODE ;
 int NET_DM_ATTR_QUEUE_LEN ;
 int NET_DM_ATTR_TRUNC_LEN ;
 int NET_DM_CMD_CONFIG_NEW ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int net_dm_alert_mode ;
 int net_dm_queue_len ;
 int net_dm_trunc_len ;
 int net_drop_monitor_family ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int net_dm_config_fill(struct sk_buff *msg, struct genl_info *info)
{
 void *hdr;

 hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq,
     &net_drop_monitor_family, 0, NET_DM_CMD_CONFIG_NEW);
 if (!hdr)
  return -EMSGSIZE;

 if (nla_put_u8(msg, NET_DM_ATTR_ALERT_MODE, net_dm_alert_mode))
  goto nla_put_failure;

 if (nla_put_u32(msg, NET_DM_ATTR_TRUNC_LEN, net_dm_trunc_len))
  goto nla_put_failure;

 if (nla_put_u32(msg, NET_DM_ATTR_QUEUE_LEN, net_dm_queue_len))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
