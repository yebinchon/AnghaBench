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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct lowpan_frag_queue {TYPE_1__ q; } ;
struct lowpan_802154_cb {scalar_t__ d_size; } ;
struct ieee802154_hdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 scalar_t__ IPV6_MIN_MTU ; 
 int /*<<< orphan*/  LOWPAN_DISPATCH_FRAG1 ; 
 int NET_RX_DROP ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 struct lowpan_frag_queue* FUNC1 (struct net*,struct lowpan_802154_cb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ieee802154_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct lowpan_802154_cb* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct lowpan_frag_queue*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,struct lowpan_802154_cb*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct sk_buff *skb, u8 frag_type)
{
	struct lowpan_frag_queue *fq;
	struct net *net = FUNC0(skb->dev);
	struct lowpan_802154_cb *cb = FUNC5(skb);
	struct ieee802154_hdr hdr = {};
	int err;

	if (FUNC2(skb, &hdr) < 0)
		goto err;

	err = FUNC7(skb, frag_type, cb);
	if (err < 0)
		goto err;

	if (frag_type == LOWPAN_DISPATCH_FRAG1) {
		err = FUNC8(skb);
		if (err == NET_RX_DROP)
			goto err;
	}

	if (cb->d_size > IPV6_MIN_MTU) {
		FUNC9("lowpan_frag_rcv: datagram size exceeds MTU\n");
		goto err;
	}

	fq = FUNC1(net, cb, &hdr.source, &hdr.dest);
	if (fq != NULL) {
		int ret;

		FUNC10(&fq->q.lock);
		ret = FUNC6(fq, skb, frag_type);
		FUNC11(&fq->q.lock);

		FUNC3(&fq->q);
		return ret;
	}

err:
	FUNC4(skb);
	return -1;
}