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
struct cbq_class {scalar_t__ defmap; int /*<<< orphan*/  tparent; scalar_t__ next_alive; int /*<<< orphan*/  q; scalar_t__ children; scalar_t__ filters; } ;
struct cbq_sched_data {struct cbq_class* rx_class; struct cbq_class* tx_borrowed; struct cbq_class* tx_class; struct cbq_class link; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct cbq_sched_data*,struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC5 (struct cbq_class*) ; 
 struct cbq_sched_data* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, unsigned long arg)
{
	struct cbq_sched_data *q = FUNC6(sch);
	struct cbq_class *cl = (struct cbq_class *)arg;

	if (cl->filters || cl->children || cl == &q->link)
		return -EBUSY;

	FUNC8(sch);

	FUNC7(cl->q);

	if (cl->next_alive)
		FUNC1(cl);

	if (q->tx_borrowed == cl)
		q->tx_borrowed = q->tx_class;
	if (q->tx_class == cl) {
		q->tx_class = NULL;
		q->tx_borrowed = NULL;
	}
#ifdef CONFIG_NET_CLS_ACT
	if (q->rx_class == cl)
		q->rx_class = NULL;
#endif

	FUNC5(cl);
	FUNC0(cl->tparent);
	cl->defmap = 0;
	FUNC4(cl);

	FUNC3(q, cl);
	FUNC9(sch);

	FUNC2(sch, cl);
	return 0;
}