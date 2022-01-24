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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {void* pkt_type; } ;
struct pn_sock {scalar_t__ sobject; scalar_t__ dobject; scalar_t__ resource; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int IFF_UP ; 
 void* PACKET_LOOPBACK ; 
 scalar_t__ PN_NO_ADDR ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct net*,scalar_t__) ; 
 struct net_device* FUNC5 (struct net*) ; 
 struct net_device* FUNC6 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct sock* FUNC8 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,struct net_device*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct pn_sock* FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct sockaddr_pn const*) ; 
 scalar_t__ FUNC14 (struct sockaddr_pn const*) ; 
 struct net* FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 

int FUNC17(struct sock *sk, struct sk_buff *skb,
		const struct sockaddr_pn *target)
{
	struct net *net = FUNC15(sk);
	struct net_device *dev;
	struct pn_sock *pn = FUNC12(sk);
	int err;
	u16 src, dst;
	u8 daddr, saddr, res;

	src = pn->sobject;
	if (target != NULL) {
		dst = FUNC13(target);
		res = FUNC14(target);
	} else {
		dst = pn->dobject;
		res = pn->resource;
	}
	daddr = FUNC7(dst);

	err = -EHOSTUNREACH;
	if (sk->sk_bound_dev_if)
		dev = FUNC0(net, sk->sk_bound_dev_if);
	else if (FUNC4(net, daddr) == 0) {
		dev = FUNC5(net);
		skb->pkt_type = PACKET_LOOPBACK;
	} else if (dst == 0) {
		/* Resource routing (small race until phonet_rcv()) */
		struct sock *sk = FUNC8(net, res);
		if (sk)	{
			FUNC16(sk);
			dev = FUNC5(net);
			skb->pkt_type = PACKET_LOOPBACK;
		} else
			dev = FUNC6(net, daddr);
	} else
		dev = FUNC6(net, daddr);

	if (!dev || !(dev->flags & IFF_UP))
		goto drop;

	saddr = FUNC3(dev, daddr);
	if (saddr == PN_NO_ADDR)
		goto drop;

	if (!FUNC7(src))
		src = FUNC10(saddr, FUNC9(src));

	err = FUNC11(skb, dev, dst, src, res, 0);
	FUNC1(dev);
	return err;

drop:
	FUNC2(skb);
	if (dev)
		FUNC1(dev);
	return err;
}