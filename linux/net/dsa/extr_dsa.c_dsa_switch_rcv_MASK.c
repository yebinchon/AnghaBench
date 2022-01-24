#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct packet_type {int dummy; } ;
struct net_device {struct dsa_port* dsa_ptr; } ;
struct dsa_slave_priv {int /*<<< orphan*/  stats64; } ;
struct dsa_port {struct sk_buff* (* rcv ) (struct sk_buff*,struct net_device*,struct packet_type*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 scalar_t__ FUNC0 (struct dsa_slave_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct dsa_slave_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,struct net_device*,struct packet_type*) ; 
 struct pcpu_sw_netstats* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct net_device *dev,
			  struct packet_type *pt, struct net_device *unused)
{
	struct dsa_port *cpu_dp = dev->dsa_ptr;
	struct sk_buff *nskb = NULL;
	struct pcpu_sw_netstats *s;
	struct dsa_slave_priv *p;

	if (FUNC11(!cpu_dp)) {
		FUNC2(skb);
		return 0;
	}

	skb = FUNC6(skb, GFP_ATOMIC);
	if (!skb)
		return 0;

	nskb = cpu_dp->rcv(skb, dev, pt);
	if (!nskb) {
		FUNC2(skb);
		return 0;
	}

	skb = nskb;
	p = FUNC3(skb->dev);
	FUNC5(skb, ETH_HLEN);
	skb->pkt_type = PACKET_HOST;
	skb->protocol = FUNC1(skb, skb->dev);

	s = FUNC8(p->stats64);
	FUNC9(&s->syncp);
	s->rx_packets++;
	s->rx_bytes += skb->len;
	FUNC10(&s->syncp);

	if (FUNC0(p, skb))
		return 0;

	FUNC4(skb);

	return 0;
}