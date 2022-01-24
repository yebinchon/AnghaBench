#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ipq {TYPE_1__ q; } ;
struct TYPE_4__ {struct net_device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMREQDS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct ipq* FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ipq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct net_device*) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct net *net, struct sk_buff *skb, u32 user)
{
	struct net_device *dev = skb->dev ? : FUNC7(skb)->dev;
	int vif = FUNC6(dev);
	struct ipq *qp;

	FUNC0(net, IPSTATS_MIB_REASMREQDS);
	FUNC8(skb);

	/* Lookup (or create) queue header */
	qp = FUNC1(net, FUNC3(skb), user, vif);
	if (qp) {
		int ret;

		FUNC9(&qp->q.lock);

		ret = FUNC2(qp, skb);

		FUNC10(&qp->q.lock);
		FUNC4(qp);
		return ret;
	}

	FUNC0(net, IPSTATS_MIB_REASMFAILS);
	FUNC5(skb);
	return -ENOMEM;
}