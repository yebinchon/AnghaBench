
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; int * attrs; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int NLMSG_DONE ;
 int NLM_F_MULTI ;
 size_t SMC_PNETID_NAME ;
 int _smc_pnet_dump (struct net*,struct sk_buff*,int ,int ,int ,int ) ;
 struct net* genl_info_net (struct genl_info*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nla_data (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 void* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int smc_pnet_get(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct sk_buff *msg;
 void *hdr;

 if (!info->attrs[SMC_PNETID_NAME])
  return -EINVAL;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 _smc_pnet_dump(net, msg, info->snd_portid, info->snd_seq,
         nla_data(info->attrs[SMC_PNETID_NAME]), 0);


 hdr = nlmsg_put(msg, info->snd_portid, info->snd_seq, NLMSG_DONE, 0,
   NLM_F_MULTI);
 if (!hdr) {
  nlmsg_free(msg);
  return -EMSGSIZE;
 }
 return genlmsg_reply(msg, info);
}
