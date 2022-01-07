
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int dn_ptr; } ;
struct endnode_hello_message {int msgflg; int area; int mpd; int datalen; int id; int data; void* timer; int neighbor; int seed; void* blksize; int iinfo; int tiver; } ;
struct dn_neigh {int addr; } ;
struct dn_ifaddr {int ifa_local; } ;
struct TYPE_2__ {scalar_t__ t3; } ;
struct dn_dev {TYPE_1__ parms; scalar_t__ router; } ;
typedef void* __le16 ;


 int DN_RT_INFO_ENDN ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dn_alloc_skb (int *,int,int ) ;
 int dn_dn2eth (int ,int ) ;
 int dn_eco_version ;
 int dn_hiord ;
 int dn_rt_all_rt_mcast ;
 int dn_rt_finish_output (struct sk_buff*,int ,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int,int) ;
 int mtu2blksize (struct net_device*) ;
 struct dn_dev* rcu_dereference_raw (int ) ;
 void** skb_push (struct sk_buff*,int) ;
 struct endnode_hello_message* skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void dn_send_endnode_hello(struct net_device *dev, struct dn_ifaddr *ifa)
{
 struct endnode_hello_message *msg;
 struct sk_buff *skb = ((void*)0);
 __le16 *pktlen;
 struct dn_dev *dn_db = rcu_dereference_raw(dev->dn_ptr);

 if ((skb = dn_alloc_skb(((void*)0), sizeof(*msg), GFP_ATOMIC)) == ((void*)0))
  return;

 skb->dev = dev;

 msg = skb_put(skb, sizeof(*msg));

 msg->msgflg = 0x0D;
 memcpy(msg->tiver, dn_eco_version, 3);
 dn_dn2eth(msg->id, ifa->ifa_local);
 msg->iinfo = DN_RT_INFO_ENDN;
 msg->blksize = cpu_to_le16(mtu2blksize(dev));
 msg->area = 0x00;
 memset(msg->seed, 0, 8);
 memcpy(msg->neighbor, dn_hiord, ETH_ALEN);

 if (dn_db->router) {
  struct dn_neigh *dn = (struct dn_neigh *)dn_db->router;
  dn_dn2eth(msg->neighbor, dn->addr);
 }

 msg->timer = cpu_to_le16((unsigned short)dn_db->parms.t3);
 msg->mpd = 0x00;
 msg->datalen = 0x02;
 memset(msg->data, 0xAA, 2);

 pktlen = skb_push(skb, 2);
 *pktlen = cpu_to_le16(skb->len - 2);

 skb_reset_network_header(skb);

 dn_rt_finish_output(skb, dn_rt_all_rt_mcast, msg->id);
}
