
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ family; } ;
struct xfrm_mode {unsigned short family; } ;
struct xfrm_state {TYPE_3__ sel; struct xfrm_mode inner_mode; } ;
struct sk_buff {scalar_t__ len; struct net_device* dev; int mark; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct TYPE_8__ {int rx_dropped; int rx_errors; } ;
struct net_device {int tstats; TYPE_2__ stats; } ;
struct TYPE_10__ {int i_key; } ;
struct ip_tunnel {int net; TYPE_4__ parms; struct net_device* dev; } ;
struct TYPE_12__ {int protocol; } ;
struct TYPE_7__ {struct ip_tunnel* ip4; } ;
struct TYPE_11__ {TYPE_1__ tunnel; } ;


 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int EPERM ;
 int LINUX_MIB_XFRMINSTATEMODEERROR ;
 int XFRM_INC_STATS (int ,int ) ;
 TYPE_6__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int XFRM_POLICY_IN ;
 TYPE_5__* XFRM_TUNNEL_SKB_CB (struct sk_buff*) ;
 int be32_to_cpu (int ) ;
 int dev_net (struct net_device*) ;
 int net_eq (int ,int ) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;
 struct xfrm_mode* xfrm_ip2inner_mode (struct xfrm_state*,int ) ;
 int xfrm_policy_check (int *,int ,struct sk_buff*,unsigned short) ;

__attribute__((used)) static int vti_rcv_cb(struct sk_buff *skb, int err)
{
 unsigned short family;
 struct net_device *dev;
 struct pcpu_sw_netstats *tstats;
 struct xfrm_state *x;
 const struct xfrm_mode *inner_mode;
 struct ip_tunnel *tunnel = XFRM_TUNNEL_SKB_CB(skb)->tunnel.ip4;
 u32 orig_mark = skb->mark;
 int ret;

 if (!tunnel)
  return 1;

 dev = tunnel->dev;

 if (err) {
  dev->stats.rx_errors++;
  dev->stats.rx_dropped++;

  return 0;
 }

 x = xfrm_input_state(skb);

 inner_mode = &x->inner_mode;

 if (x->sel.family == AF_UNSPEC) {
  inner_mode = xfrm_ip2inner_mode(x, XFRM_MODE_SKB_CB(skb)->protocol);
  if (inner_mode == ((void*)0)) {
   XFRM_INC_STATS(dev_net(skb->dev),
           LINUX_MIB_XFRMINSTATEMODEERROR);
   return -EINVAL;
  }
 }

 family = inner_mode->family;

 skb->mark = be32_to_cpu(tunnel->parms.i_key);
 ret = xfrm_policy_check(((void*)0), XFRM_POLICY_IN, skb, family);
 skb->mark = orig_mark;

 if (!ret)
  return -EPERM;

 skb_scrub_packet(skb, !net_eq(tunnel->net, dev_net(skb->dev)));
 skb->dev = dev;

 tstats = this_cpu_ptr(dev->tstats);

 u64_stats_update_begin(&tstats->syncp);
 tstats->rx_packets++;
 tstats->rx_bytes += skb->len;
 u64_stats_update_end(&tstats->syncp);

 return 0;
}
