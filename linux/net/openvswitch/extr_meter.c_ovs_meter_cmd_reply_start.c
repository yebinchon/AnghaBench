
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ovs_header {int dp_ifindex; } ;
struct genl_info {int snd_seq; int snd_portid; struct ovs_header* userhdr; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int NLMSG_DEFAULT_SIZE ;
 int dp_meter_genl_family ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static struct sk_buff *
ovs_meter_cmd_reply_start(struct genl_info *info, u8 cmd,
     struct ovs_header **ovs_reply_header)
{
 struct sk_buff *skb;
 struct ovs_header *ovs_header = info->userhdr;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 *ovs_reply_header = genlmsg_put(skb, info->snd_portid,
     info->snd_seq,
     &dp_meter_genl_family, 0, cmd);
 if (!*ovs_reply_header) {
  nlmsg_free(skb);
  return ERR_PTR(-EMSGSIZE);
 }
 (*ovs_reply_header)->dp_ifindex = ovs_header->dp_ifindex;

 return skb;
}
