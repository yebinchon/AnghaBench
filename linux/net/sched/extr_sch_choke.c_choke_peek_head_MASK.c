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
struct choke_sched_data {size_t head; size_t tail; struct sk_buff** tab; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct choke_sched_data* FUNC0 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff *FUNC1(struct Qdisc *sch)
{
	struct choke_sched_data *q = FUNC0(sch);

	return (q->head != q->tail) ? q->tab[q->head] : NULL;
}