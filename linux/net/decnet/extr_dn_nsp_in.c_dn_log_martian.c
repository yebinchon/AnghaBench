
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct dn_skb_cb {int dst_port; int src_port; int dst; int src; } ;
struct TYPE_2__ {char* name; } ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 scalar_t__ decnet_log_martians ;
 int le16_to_cpu (int ) ;
 int net_info_ratelimited (char*,char const*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void dn_log_martian(struct sk_buff *skb, const char *msg)
{
 if (decnet_log_martians) {
  char *devname = skb->dev ? skb->dev->name : "???";
  struct dn_skb_cb *cb = DN_SKB_CB(skb);
  net_info_ratelimited("DECnet: Martian packet (%s) dev=%s src=0x%04hx dst=0x%04hx srcport=0x%04hx dstport=0x%04hx\n",
         msg, devname,
         le16_to_cpu(cb->src),
         le16_to_cpu(cb->dst),
         le16_to_cpu(cb->src_port),
         le16_to_cpu(cb->dst_port));
 }
}
