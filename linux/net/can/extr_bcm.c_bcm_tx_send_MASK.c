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
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct msghdr {int dummy; } ;
struct can_skb_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ skbcnt; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MHSIZ ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sock*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct msghdr *msg, int ifindex, struct sock *sk,
		       int cfsiz)
{
	struct sk_buff *skb;
	struct net_device *dev;
	int err;

	/* we need a real device to send frames */
	if (!ifindex)
		return -ENODEV;

	skb = FUNC0(cfsiz + sizeof(struct can_skb_priv), GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	FUNC3(skb);

	err = FUNC8(FUNC9(skb, cfsiz), msg, cfsiz);
	if (err < 0) {
		FUNC7(skb);
		return err;
	}

	dev = FUNC5(FUNC10(sk), ifindex);
	if (!dev) {
		FUNC7(skb);
		return -ENODEV;
	}

	FUNC2(skb)->ifindex = dev->ifindex;
	FUNC2(skb)->skbcnt = 0;
	skb->dev = dev;
	FUNC4(skb, sk);
	err = FUNC1(skb, 1); /* send with loopback */
	FUNC6(dev);

	if (err)
		return err;

	return cfsiz + MHSIZ;
}