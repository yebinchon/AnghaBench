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
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {size_t name; int needed_tailroom; } ;
struct msghdr {int msg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IEEE802154 ; 
 int EMSGSIZE ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IEEE802154 ; 
 unsigned int IEEE802154_MTU ; 
 int FUNC0 (struct net_device*) ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct msghdr *msg, size_t size)
{
	struct net_device *dev;
	unsigned int mtu;
	struct sk_buff *skb;
	int hlen, tlen;
	int err;

	if (msg->msg_flags & MSG_OOB) {
		FUNC10("msg->msg_flags = 0x%x\n", msg->msg_flags);
		return -EOPNOTSUPP;
	}

	FUNC7(sk);
	if (!sk->sk_bound_dev_if)
		dev = FUNC2(FUNC17(sk), ARPHRD_IEEE802154);
	else
		dev = FUNC1(FUNC17(sk), sk->sk_bound_dev_if);
	FUNC11(sk);

	if (!dev) {
		FUNC10("no dev\n");
		err = -ENXIO;
		goto out;
	}

	mtu = IEEE802154_MTU;
	FUNC10("name = %s, mtu = %u\n", dev->name, mtu);

	if (size > mtu) {
		FUNC10("size = %zu, mtu = %u\n", size, mtu);
		err = -EMSGSIZE;
		goto out_dev;
	}

	hlen = FUNC0(dev);
	tlen = dev->needed_tailroom;
	skb = FUNC16(sk, hlen + tlen + size,
				  msg->msg_flags & MSG_DONTWAIT, &err);
	if (!skb)
		goto out_dev;

	FUNC13(skb, hlen);

	FUNC14(skb);
	FUNC15(skb);

	err = FUNC8(FUNC12(skb, size), msg, size);
	if (err < 0)
		goto out_skb;

	skb->dev = dev;
	skb->protocol = FUNC5(ETH_P_IEEE802154);

	err = FUNC4(skb);
	if (err > 0)
		err = FUNC9(err);

	FUNC3(dev);

	return err ?: size;

out_skb:
	FUNC6(skb);
out_dev:
	FUNC3(dev);
out:
	return err;
}