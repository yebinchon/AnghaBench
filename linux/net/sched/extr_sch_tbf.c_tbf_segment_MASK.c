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
struct tbf_sched_data {int /*<<< orphan*/  qdisc; } ;
struct sk_buff {scalar_t__ len; struct sk_buff* next; } ;
struct TYPE_3__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
typedef  int netdev_features_t ;
struct TYPE_4__ {scalar_t__ pkt_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETIF_F_GSO_MASK ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 struct tbf_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*,int,unsigned int) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct Qdisc *sch,
		       struct sk_buff **to_free)
{
	struct tbf_sched_data *q = FUNC7(sch);
	struct sk_buff *segs, *nskb;
	netdev_features_t features = FUNC3(skb);
	unsigned int len = 0, prev_len = FUNC6(skb);
	int ret, nb;

	segs = FUNC11(skb, features & ~NETIF_F_GSO_MASK);

	if (FUNC0(segs))
		return FUNC4(skb, sch, to_free);

	nb = 0;
	while (segs) {
		nskb = segs->next;
		FUNC12(segs);
		FUNC9(segs)->pkt_len = segs->len;
		len += segs->len;
		ret = FUNC5(segs, q->qdisc, to_free);
		if (ret != NET_XMIT_SUCCESS) {
			if (FUNC2(ret))
				FUNC8(sch);
		} else {
			nb++;
		}
		segs = nskb;
	}
	sch->q.qlen += nb;
	if (nb > 1)
		FUNC10(sch, 1 - nb, prev_len - len);
	FUNC1(skb);
	return nb > 0 ? NET_XMIT_SUCCESS : NET_XMIT_DROP;
}