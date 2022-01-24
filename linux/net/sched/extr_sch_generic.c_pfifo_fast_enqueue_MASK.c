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
struct skb_array {int dummy; } ;
struct sk_buff {size_t priority; } ;
struct pfifo_fast_priv {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 size_t TC_PRIO_MAX ; 
 struct skb_array* FUNC0 (struct pfifo_fast_priv*,int) ; 
 int* prio2band ; 
 int FUNC1 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 scalar_t__ FUNC3 (struct Qdisc*) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 struct pfifo_fast_priv* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,unsigned int) ; 
 int FUNC7 (struct skb_array*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct Qdisc *qdisc,
			      struct sk_buff **to_free)
{
	int band = prio2band[skb->priority & TC_PRIO_MAX];
	struct pfifo_fast_priv *priv = FUNC5(qdisc);
	struct skb_array *q = FUNC0(priv, band);
	unsigned int pkt_len = FUNC4(skb);
	int err;

	err = FUNC7(q, skb);

	if (FUNC8(err)) {
		if (FUNC3(qdisc))
			return FUNC2(skb, qdisc, to_free);
		else
			return FUNC1(skb, qdisc, to_free);
	}

	FUNC6(qdisc, pkt_len);
	return NET_XMIT_SUCCESS;
}