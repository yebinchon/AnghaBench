#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {scalar_t__ ifindex; } ;
struct TYPE_5__ {int /*<<< orphan*/  ra_chain; } ;
struct net {TYPE_1__ ipv4; } ;
struct ip_ra_chain {struct sock* sk; int /*<<< orphan*/  next; } ;
struct TYPE_7__ {scalar_t__ inet_num; } ;
struct TYPE_6__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IP_DEFRAG_CALL_RA_CHAIN ; 
 struct net* FUNC0 (struct net_device*) ; 
 TYPE_4__* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 struct ip_ra_chain* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

bool FUNC8(struct sk_buff *skb)
{
	struct ip_ra_chain *ra;
	u8 protocol = FUNC3(skb)->protocol;
	struct sock *last = NULL;
	struct net_device *dev = skb->dev;
	struct net *net = FUNC0(dev);

	for (ra = FUNC6(net->ipv4.ra_chain); ra; ra = FUNC6(ra->next)) {
		struct sock *sk = ra->sk;

		/* If socket is bound to an interface, only report
		 * the packet if it came  from that interface.
		 */
		if (sk && FUNC1(sk)->inet_num == protocol &&
		    (!sk->sk_bound_dev_if ||
		     sk->sk_bound_dev_if == dev->ifindex)) {
			if (FUNC4(FUNC3(skb))) {
				if (FUNC2(net, skb, IP_DEFRAG_CALL_RA_CHAIN))
					return true;
			}
			if (last) {
				struct sk_buff *skb2 = FUNC7(skb, GFP_ATOMIC);
				if (skb2)
					FUNC5(last, skb2);
			}
			last = sk;
		}
	}

	if (last) {
		FUNC5(last, skb);
		return true;
	}
	return false;
}