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
struct cbq_sched_data {int activemask; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct Qdisc*,int) ; 
 int FUNC1 (unsigned int) ; 
 struct cbq_sched_data* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static inline struct sk_buff *
FUNC3(struct Qdisc *sch)
{
	struct cbq_sched_data *q = FUNC2(sch);
	struct sk_buff *skb;
	unsigned int activemask;

	activemask = q->activemask & 0xFF;
	while (activemask) {
		int prio = FUNC1(~activemask);
		activemask &= ~(1<<prio);
		skb = FUNC0(sch, prio);
		if (skb)
			return skb;
	}
	return NULL;
}