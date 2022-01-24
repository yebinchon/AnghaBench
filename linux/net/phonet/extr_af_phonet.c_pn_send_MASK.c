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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; scalar_t__ pkt_type; int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ priority; } ;
struct phonethdr {void* pn_sobj; void* pn_robj; int /*<<< orphan*/  pn_length; scalar_t__ pn_res; void* pn_sdev; void* pn_rdev; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_PHONET ; 
 scalar_t__ PACKET_LOOPBACK ; 
 scalar_t__ PNADDR_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 struct phonethdr* FUNC12 (struct sk_buff*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct sk_buff *skb, struct net_device *dev,
			u16 dst, u16 src, u8 res, u8 irq)
{
	struct phonethdr *ph;
	int err;

	if (skb->len + 2 > 0xffff /* Phonet length field limit */ ||
	    skb->len + sizeof(struct phonethdr) > dev->mtu) {
		err = -EMSGSIZE;
		goto drop;
	}

	/* Broadcast sending is not implemented */
	if (FUNC10(dst) == PNADDR_BROADCAST) {
		err = -EOPNOTSUPP;
		goto drop;
	}

	FUNC19(skb);
	FUNC0(FUNC14(skb) & 1); /* HW assumes word alignment */
	FUNC16(skb, sizeof(struct phonethdr));
	FUNC18(skb);
	ph = FUNC12(skb);
	ph->pn_rdev = FUNC11(dst);
	ph->pn_sdev = FUNC11(src);
	ph->pn_res = res;
	ph->pn_length = FUNC1(skb->len + 2 - sizeof(*ph));
	ph->pn_robj = FUNC13(dst);
	ph->pn_sobj = FUNC13(src);

	skb->protocol = FUNC4(ETH_P_PHONET);
	skb->priority = 0;
	skb->dev = dev;

	if (skb->pkt_type == PACKET_LOOPBACK) {
		FUNC17(skb);
		FUNC15(skb);
		err = (irq ? FUNC7(skb) : FUNC8(skb)) ? -ENOBUFS : 0;
	} else {
		err = FUNC2(skb, dev, FUNC9(skb->protocol),
					NULL, NULL, skb->len);
		if (err < 0) {
			err = -EHOSTUNREACH;
			goto drop;
		}
		err = FUNC3(skb);
		if (FUNC20(err > 0))
			err = FUNC6(err);
	}

	return err;
drop:
	FUNC5(skb);
	return err;
}