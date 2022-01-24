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
typedef  int u16 ;
struct sockaddr_pn {int /*<<< orphan*/  spn_resource; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ pkt_type; struct net_device* dev; } ;
struct phonethdr {int /*<<< orphan*/  pn_length; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  hard_header_len; int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PHONET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ PACKET_LOOPBACK ; 
 scalar_t__ PNADDR_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC9 (struct net*,scalar_t__) ; 
 struct net_device* FUNC10 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct sk_buff*) ; 
 struct sock* FUNC12 (struct net*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC13 (struct net*,struct sockaddr_pn*) ; 
 struct phonethdr* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct sockaddr_pn*) ; 
 scalar_t__ FUNC16 (struct sockaddr_pn*) ; 
 scalar_t__ FUNC17 (struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 struct sk_buff* FUNC25 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static int FUNC27(struct sk_buff *skb, struct net_device *dev,
			struct packet_type *pkttype,
			struct net_device *orig_dev)
{
	struct net *net = FUNC3(dev);
	struct phonethdr *ph;
	struct sockaddr_pn sa;
	u16 len;

	skb = FUNC25(skb, GFP_ATOMIC);
	if (!skb)
		return NET_RX_DROP;

	/* check we have at least a full Phonet header */
	if (!FUNC18(skb, sizeof(struct phonethdr)))
		goto out;

	/* check that the advertised length is correct */
	ph = FUNC14(skb);
	len = FUNC6(&ph->pn_length);
	if (len < 2)
		goto out;
	len -= 2;
	if ((len > skb->len) || FUNC19(skb, len))
		goto out;
	FUNC24(skb);

	FUNC15(skb, &sa);

	/* check if this is broadcasted */
	if (FUNC16(&sa) == PNADDR_BROADCAST) {
		FUNC11(net, skb);
		goto out;
	}

	/* resource routing */
	if (FUNC17(&sa) == 0) {
		struct sock *sk = FUNC12(net, sa.spn_resource);
		if (sk)
			return FUNC22(sk, skb, 0);
	}

	/* check if we are the destination */
	if (FUNC9(net, FUNC16(&sa)) == 0) {
		/* Phonet packet input */
		struct sock *sk = FUNC13(net, &sa);

		if (sk)
			return FUNC22(sk, skb, 0);

		if (FUNC1(skb)) {
			FUNC20(skb);
			FUNC21(skb);
		}
	} else if (FUNC26(skb->pkt_type == PACKET_LOOPBACK))
		goto out; /* Race between address deletion and loopback */
	else {
		/* Phonet packet routing */
		struct net_device *out_dev;

		out_dev = FUNC10(net, FUNC16(&sa));
		if (!out_dev) {
			FUNC8("No Phonet route to %02X\n",
					    FUNC16(&sa));
			goto out;
		}

		FUNC0(skb, sizeof(struct phonethdr));
		skb->dev = out_dev;
		if (out_dev == dev) {
			FUNC8("Phonet loop to %02X on %s\n",
					    FUNC16(&sa),
					    dev->name);
			goto out_dev;
		}
		/* Some drivers (e.g. TUN) do not allocate HW header space */
		if (FUNC23(skb, out_dev->hard_header_len))
			goto out_dev;

		if (FUNC2(skb, out_dev, ETH_P_PHONET, NULL, NULL,
					skb->len) < 0)
			goto out_dev;
		FUNC5(skb);
		FUNC4(out_dev);
		return NET_RX_SUCCESS;
out_dev:
		FUNC4(out_dev);
	}

out:
	FUNC7(skb);
	return NET_RX_DROP;
}