
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ncsi_request {int snd_portid; TYPE_1__* rsp; int snd_seq; } ;
struct ncsi_package {int id; } ;
struct ncsi_channel {int id; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {scalar_t__ data; int len; TYPE_2__* dev; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NCSI_ATTR_CHANNEL_ID ;
 int NCSI_ATTR_DATA ;
 int NCSI_ATTR_IFINDEX ;
 int NCSI_ATTR_PACKAGE_ID ;
 int NCSI_CMD_SEND_CMD ;
 int NCSI_RESERVED_CHANNEL ;
 int NLMSG_DEFAULT_SIZE ;
 struct net* dev_net (TYPE_2__*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_unicast (struct net*,struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ncsi_genl_family ;
 int nla_put (struct sk_buff*,int ,int ,void*) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;

int ncsi_send_netlink_rsp(struct ncsi_request *nr,
     struct ncsi_package *np,
     struct ncsi_channel *nc)
{
 struct sk_buff *skb;
 struct net *net;
 void *hdr;
 int rc;

 net = dev_net(nr->rsp->dev);

 skb = genlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 hdr = genlmsg_put(skb, nr->snd_portid, nr->snd_seq,
     &ncsi_genl_family, 0, NCSI_CMD_SEND_CMD);
 if (!hdr) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 nla_put_u32(skb, NCSI_ATTR_IFINDEX, nr->rsp->dev->ifindex);
 if (np)
  nla_put_u32(skb, NCSI_ATTR_PACKAGE_ID, np->id);
 if (nc)
  nla_put_u32(skb, NCSI_ATTR_CHANNEL_ID, nc->id);
 else
  nla_put_u32(skb, NCSI_ATTR_CHANNEL_ID, NCSI_RESERVED_CHANNEL);

 rc = nla_put(skb, NCSI_ATTR_DATA, nr->rsp->len, (void *)nr->rsp->data);
 if (rc)
  goto err;

 genlmsg_end(skb, hdr);
 return genlmsg_unicast(net, skb, nr->snd_portid);

err:
 kfree_skb(skb);
 return rc;
}
