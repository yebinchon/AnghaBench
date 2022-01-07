
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; struct net_device* dev; } ;
struct net_device {int needed_tailroom; } ;
struct ncsi_request {struct sk_buff* cmd; } ;
struct ncsi_dev {struct net_device* dev; } ;
struct ncsi_dev_priv {struct ncsi_dev ndev; } ;
struct ncsi_cmd_pkt_hdr {int dummy; } ;
struct ncsi_cmd_arg {int payload; int req_flags; struct ncsi_dev_priv* ndp; } ;


 int ETH_P_NCSI ;
 int GFP_ATOMIC ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int htons (int ) ;
 struct ncsi_request* ncsi_alloc_request (struct ncsi_dev_priv*,int ) ;
 int ncsi_free_request (struct ncsi_request*) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static struct ncsi_request *ncsi_alloc_command(struct ncsi_cmd_arg *nca)
{
 struct ncsi_dev_priv *ndp = nca->ndp;
 struct ncsi_dev *nd = &ndp->ndev;
 struct net_device *dev = nd->dev;
 int hlen = LL_RESERVED_SPACE(dev);
 int tlen = dev->needed_tailroom;
 int len = hlen + tlen;
 struct sk_buff *skb;
 struct ncsi_request *nr;

 nr = ncsi_alloc_request(ndp, nca->req_flags);
 if (!nr)
  return ((void*)0);





 len += sizeof(struct ncsi_cmd_pkt_hdr) + 4;
 if (nca->payload < 26)
  len += 26;
 else
  len += nca->payload;


 skb = alloc_skb(len, GFP_ATOMIC);
 if (!skb) {
  ncsi_free_request(nr);
  return ((void*)0);
 }

 nr->cmd = skb;
 skb_reserve(skb, hlen);
 skb_reset_network_header(skb);

 skb->dev = dev;
 skb->protocol = htons(ETH_P_NCSI);

 return nr;
}
