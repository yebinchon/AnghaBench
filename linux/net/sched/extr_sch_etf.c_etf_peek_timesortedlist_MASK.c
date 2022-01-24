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
struct rb_node {int dummy; } ;
struct etf_sched_data {int /*<<< orphan*/  head; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct etf_sched_data* FUNC0 (struct Qdisc*) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (struct rb_node*) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct Qdisc *sch)
{
	struct etf_sched_data *q = FUNC0(sch);
	struct rb_node *p;

	p = FUNC1(&q->head);
	if (!p)
		return NULL;

	return FUNC2(p);
}