
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ila_xlat_params {int dummy; } ;
struct ila_net {int dummy; } ;
struct ila_map {int dummy; } ;
struct genl_info {TYPE_1__* genlhdr; int snd_seq; int snd_portid; } ;
struct TYPE_2__ {int cmd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 struct net* genl_info_net (struct genl_info*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int ila_dump_info (struct ila_map*,int ,int ,int ,struct sk_buff*,int ) ;
 struct ila_map* ila_lookup_by_params (struct ila_xlat_params*,struct ila_net*) ;
 int ila_net_id ;
 struct ila_net* net_generic (struct net*,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int parse_nl_config (struct genl_info*,struct ila_xlat_params*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int ila_xlat_nl_cmd_get_mapping(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct ila_net *ilan = net_generic(net, ila_net_id);
 struct sk_buff *msg;
 struct ila_xlat_params xp;
 struct ila_map *ila;
 int ret;

 ret = parse_nl_config(info, &xp);
 if (ret)
  return ret;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 rcu_read_lock();

 ila = ila_lookup_by_params(&xp, ilan);
 if (ila) {
  ret = ila_dump_info(ila,
        info->snd_portid,
        info->snd_seq, 0, msg,
        info->genlhdr->cmd);
 }

 rcu_read_unlock();

 if (ret < 0)
  goto out_free;

 return genlmsg_reply(msg, info);

out_free:
 nlmsg_free(msg);
 return ret;
}
