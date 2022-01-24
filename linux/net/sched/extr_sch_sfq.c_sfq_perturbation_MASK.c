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
struct timer_list {int dummy; } ;
struct sfq_sched_data {scalar_t__ perturb_period; int /*<<< orphan*/  perturb_timer; scalar_t__ tail; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  perturbation; struct Qdisc* sch; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  siphash_key_t ;
typedef  int /*<<< orphan*/  nkey ;

/* Variables and functions */
 struct sfq_sched_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  perturb_timer ; 
 struct sfq_sched_data* q ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct sfq_sched_data *q = FUNC0(q, t, perturb_timer);
	struct Qdisc *sch = q->sch;
	spinlock_t *root_lock = FUNC3(FUNC4(sch));
	siphash_key_t nkey;

	FUNC1(&nkey, sizeof(nkey));
	FUNC6(root_lock);
	q->perturbation = nkey;
	if (!q->filter_list && q->tail)
		FUNC5(sch);
	FUNC7(root_lock);

	if (q->perturb_period)
		FUNC2(&q->perturb_timer, jiffies + q->perturb_period);
}