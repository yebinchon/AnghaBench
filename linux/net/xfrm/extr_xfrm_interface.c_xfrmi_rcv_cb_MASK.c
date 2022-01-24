#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ family; } ;
struct xfrm_mode {int /*<<< orphan*/  family; } ;
struct xfrm_state {TYPE_2__ sel; struct xfrm_mode inner_mode; } ;
struct xfrm_if {int /*<<< orphan*/  net; struct net_device* dev; } ;
struct sk_buff {scalar_t__ len; struct net_device* dev; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int /*<<< orphan*/  tstats; TYPE_1__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEMODEERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct pcpu_sw_netstats* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC8 (struct sk_buff*) ; 
 struct xfrm_mode* FUNC9 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct xfrm_if* FUNC11 (int /*<<< orphan*/ ,struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, int err)
{
	const struct xfrm_mode *inner_mode;
	struct pcpu_sw_netstats *tstats;
	struct net_device *dev;
	struct xfrm_state *x;
	struct xfrm_if *xi;
	bool xnet;

	if (err && !FUNC4(skb))
		return 0;

	x = FUNC8(skb);

	xi = FUNC11(FUNC13(x), x);
	if (!xi)
		return 1;

	dev = xi->dev;
	skb->dev = dev;

	if (err) {
		dev->stats.rx_errors++;
		dev->stats.rx_dropped++;

		return 0;
	}

	xnet = !FUNC3(xi->net, FUNC2(skb->dev));

	if (xnet) {
		inner_mode = &x->inner_mode;

		if (x->sel.family == AF_UNSPEC) {
			inner_mode = FUNC9(x, FUNC1(skb)->protocol);
			if (inner_mode == NULL) {
				FUNC0(FUNC2(skb->dev),
					       LINUX_MIB_XFRMINSTATEMODEERROR);
				return -EINVAL;
			}
		}

		if (!FUNC10(NULL, XFRM_POLICY_IN, skb,
				       inner_mode->family))
			return -EPERM;
	}

	FUNC12(skb, xnet);

	tstats = FUNC5(dev->tstats);

	FUNC6(&tstats->syncp);
	tstats->rx_packets++;
	tstats->rx_bytes += skb->len;
	FUNC7(&tstats->syncp);

	return 0;
}