#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct canfd_frame {int dummy; } ;
struct can_skb_priv {int dummy; } ;
struct bcm_op {int cfsiz; int currframe; int nframes; int /*<<< orphan*/  frames_abs; int /*<<< orphan*/  sk; int /*<<< orphan*/  ifindex; struct canfd_frame* frames; } ;
struct TYPE_2__ {scalar_t__ skbcnt; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct canfd_frame*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct bcm_op *op)
{
	struct sk_buff *skb;
	struct net_device *dev;
	struct canfd_frame *cf = op->frames + op->cfsiz * op->currframe;

	/* no target device? => exit */
	if (!op->ifindex)
		return;

	dev = FUNC5(FUNC9(op->sk), op->ifindex);
	if (!dev) {
		/* RFC: should this bcm_op remove itself here? */
		return;
	}

	skb = FUNC0(op->cfsiz + sizeof(struct can_skb_priv), FUNC7());
	if (!skb)
		goto out;

	FUNC3(skb);
	FUNC2(skb)->ifindex = dev->ifindex;
	FUNC2(skb)->skbcnt = 0;

	FUNC8(skb, cf, op->cfsiz);

	/* send with loopback */
	skb->dev = dev;
	FUNC4(skb, op->sk);
	FUNC1(skb, 1);

	/* update statistics */
	op->currframe++;
	op->frames_abs++;

	/* reached last frame? */
	if (op->currframe >= op->nframes)
		op->currframe = 0;
out:
	FUNC6(dev);
}