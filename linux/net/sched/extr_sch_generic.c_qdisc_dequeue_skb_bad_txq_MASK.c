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
struct sk_buff {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  skb_bad_txq; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct Qdisc*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC3(struct Qdisc *q)
{
	struct sk_buff *skb = FUNC1(&q->skb_bad_txq);

	if (FUNC2(skb))
		skb = FUNC0(q);

	return skb;
}