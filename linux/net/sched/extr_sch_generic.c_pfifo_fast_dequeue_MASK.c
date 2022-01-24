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
struct sk_buff {int dummy; } ;
struct pfifo_fast_priv {int dummy; } ;
struct Qdisc {int empty; } ;

/* Variables and functions */
 int PFIFO_FAST_BANDS ; 
 struct sk_buff* FUNC0 (struct skb_array*) ; 
 scalar_t__ FUNC1 (struct skb_array*) ; 
 struct skb_array* FUNC2 (struct pfifo_fast_priv*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct pfifo_fast_priv* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct Qdisc *qdisc)
{
	struct pfifo_fast_priv *priv = FUNC4(qdisc);
	struct sk_buff *skb = NULL;
	int band;

	for (band = 0; band < PFIFO_FAST_BANDS && !skb; band++) {
		struct skb_array *q = FUNC2(priv, band);

		if (FUNC1(q))
			continue;

		skb = FUNC0(q);
	}
	if (FUNC3(skb)) {
		FUNC5(qdisc, skb);
	} else {
		qdisc->empty = true;
	}

	return skb;
}