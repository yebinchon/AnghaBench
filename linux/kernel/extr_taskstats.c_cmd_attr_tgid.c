
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct taskstats {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 size_t TASKSTATS_CMD_ATTR_TGID ;
 int TASKSTATS_CMD_NEW ;
 int TASKSTATS_TYPE_TGID ;
 int fill_stats_for_tgid (int ,struct taskstats*) ;
 struct taskstats* mk_reply (struct sk_buff*,int ,int ) ;
 int nla_get_u32 (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int prepare_reply (struct genl_info*,int ,struct sk_buff**,size_t) ;
 int send_reply (struct sk_buff*,struct genl_info*) ;
 size_t taskstats_packet_size () ;

__attribute__((used)) static int cmd_attr_tgid(struct genl_info *info)
{
 struct taskstats *stats;
 struct sk_buff *rep_skb;
 size_t size;
 u32 tgid;
 int rc;

 size = taskstats_packet_size();

 rc = prepare_reply(info, TASKSTATS_CMD_NEW, &rep_skb, size);
 if (rc < 0)
  return rc;

 rc = -EINVAL;
 tgid = nla_get_u32(info->attrs[TASKSTATS_CMD_ATTR_TGID]);
 stats = mk_reply(rep_skb, TASKSTATS_TYPE_TGID, tgid);
 if (!stats)
  goto err;

 rc = fill_stats_for_tgid(tgid, stats);
 if (rc < 0)
  goto err;
 return send_reply(rep_skb, info);
err:
 nlmsg_free(rep_skb);
 return rc;
}
