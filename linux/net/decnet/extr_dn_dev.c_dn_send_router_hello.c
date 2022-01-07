
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int dn_ptr; } ;
struct dn_neigh {int dummy; } ;
struct dn_ifaddr {int ifa_local; } ;
struct TYPE_2__ {int forwarding; scalar_t__ t3; int priority; } ;
struct dn_dev {TYPE_1__ parms; scalar_t__ router; } ;
typedef int __le16 ;


 int DN_RT_INFO_L1RT ;
 int DN_RT_INFO_L2RT ;
 int DN_RT_PKT_CNTL ;
 int DN_RT_PKT_ERTH ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dn_alloc_skb (int *,size_t,int ) ;
 scalar_t__ dn_am_i_a_router (struct dn_neigh*,struct dn_dev*,struct dn_ifaddr*) ;
 int dn_dn2eth (unsigned char*,int ) ;
 int dn_neigh_elist (struct net_device*,unsigned char*,int) ;
 int dn_rt_all_end_mcast ;
 int dn_rt_all_rt_mcast ;
 int dn_rt_finish_output (struct sk_buff*,int ,char*) ;
 int memset (unsigned char*,int ,int) ;
 int mtu2blksize (struct net_device*) ;
 struct dn_dev* rcu_dereference_raw (int ) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int * skb_push (struct sk_buff*,int) ;
 unsigned char* skb_put (struct sk_buff*,size_t) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static void dn_send_router_hello(struct net_device *dev, struct dn_ifaddr *ifa)
{
 int n;
 struct dn_dev *dn_db = rcu_dereference_raw(dev->dn_ptr);
 struct dn_neigh *dn = (struct dn_neigh *)dn_db->router;
 struct sk_buff *skb;
 size_t size;
 unsigned char *ptr;
 unsigned char *i1, *i2;
 __le16 *pktlen;
 char *src;

 if (mtu2blksize(dev) < (26 + 7))
  return;

 n = mtu2blksize(dev) - 26;
 n /= 7;

 if (n > 32)
  n = 32;

 size = 2 + 26 + 7 * n;

 if ((skb = dn_alloc_skb(((void*)0), size, GFP_ATOMIC)) == ((void*)0))
  return;

 skb->dev = dev;
 ptr = skb_put(skb, size);

 *ptr++ = DN_RT_PKT_CNTL | DN_RT_PKT_ERTH;
 *ptr++ = 2;
 *ptr++ = 0;
 *ptr++ = 0;
 dn_dn2eth(ptr, ifa->ifa_local);
 src = ptr;
 ptr += ETH_ALEN;
 *ptr++ = dn_db->parms.forwarding == 1 ?
   DN_RT_INFO_L1RT : DN_RT_INFO_L2RT;
 *((__le16 *)ptr) = cpu_to_le16(mtu2blksize(dev));
 ptr += 2;
 *ptr++ = dn_db->parms.priority;
 *ptr++ = 0;
 *((__le16 *)ptr) = cpu_to_le16((unsigned short)dn_db->parms.t3);
 ptr += 2;
 *ptr++ = 0;
 i1 = ptr++;
 memset(ptr, 0, 7);
 ptr += 7;
 i2 = ptr++;

 n = dn_neigh_elist(dev, ptr, n);

 *i2 = 7 * n;
 *i1 = 8 + *i2;

 skb_trim(skb, (27 + *i2));

 pktlen = skb_push(skb, 2);
 *pktlen = cpu_to_le16(skb->len - 2);

 skb_reset_network_header(skb);

 if (dn_am_i_a_router(dn, dn_db, ifa)) {
  struct sk_buff *skb2 = skb_copy(skb, GFP_ATOMIC);
  if (skb2) {
   dn_rt_finish_output(skb2, dn_rt_all_end_mcast, src);
  }
 }

 dn_rt_finish_output(skb, dn_rt_all_rt_mcast, src);
}
