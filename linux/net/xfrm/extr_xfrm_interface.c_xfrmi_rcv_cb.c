
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ family; } ;
struct xfrm_mode {int family; } ;
struct xfrm_state {TYPE_2__ sel; struct xfrm_mode inner_mode; } ;
struct xfrm_if {int net; struct net_device* dev; } ;
struct sk_buff {scalar_t__ len; struct net_device* dev; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {int rx_dropped; int rx_errors; } ;
struct net_device {int tstats; TYPE_1__ stats; } ;
struct TYPE_6__ {int protocol; } ;


 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int EPERM ;
 int LINUX_MIB_XFRMINSTATEMODEERROR ;
 int XFRM_INC_STATS (int ,int ) ;
 TYPE_3__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int XFRM_POLICY_IN ;
 int dev_net (struct net_device*) ;
 int net_eq (int ,int ) ;
 int secpath_exists (struct sk_buff*) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;
 struct xfrm_mode* xfrm_ip2inner_mode (struct xfrm_state*,int ) ;
 int xfrm_policy_check (int *,int ,struct sk_buff*,int ) ;
 struct xfrm_if* xfrmi_lookup (int ,struct xfrm_state*) ;
 int xfrmi_scrub_packet (struct sk_buff*,int) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrmi_rcv_cb(struct sk_buff *skb, int err)
{
 const struct xfrm_mode *inner_mode;
 struct pcpu_sw_netstats *tstats;
 struct net_device *dev;
 struct xfrm_state *x;
 struct xfrm_if *xi;
 bool xnet;

 if (err && !secpath_exists(skb))
  return 0;

 x = xfrm_input_state(skb);

 xi = xfrmi_lookup(xs_net(x), x);
 if (!xi)
  return 1;

 dev = xi->dev;
 skb->dev = dev;

 if (err) {
  dev->stats.rx_errors++;
  dev->stats.rx_dropped++;

  return 0;
 }

 xnet = !net_eq(xi->net, dev_net(skb->dev));

 if (xnet) {
  inner_mode = &x->inner_mode;

  if (x->sel.family == AF_UNSPEC) {
   inner_mode = xfrm_ip2inner_mode(x, XFRM_MODE_SKB_CB(skb)->protocol);
   if (inner_mode == ((void*)0)) {
    XFRM_INC_STATS(dev_net(skb->dev),
            LINUX_MIB_XFRMINSTATEMODEERROR);
    return -EINVAL;
   }
  }

  if (!xfrm_policy_check(((void*)0), XFRM_POLICY_IN, skb,
           inner_mode->family))
   return -EPERM;
 }

 xfrmi_scrub_packet(skb, xnet);

 tstats = this_cpu_ptr(dev->tstats);

 u64_stats_update_begin(&tstats->syncp);
 tstats->rx_packets++;
 tstats->rx_bytes += skb->len;
 u64_stats_update_end(&tstats->syncp);

 return 0;
}
