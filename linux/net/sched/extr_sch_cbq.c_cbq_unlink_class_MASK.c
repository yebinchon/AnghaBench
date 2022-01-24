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
struct cbq_sched_data {int /*<<< orphan*/  clhash; } ;
struct cbq_class {struct cbq_class* sibling; TYPE_1__* tparent; int /*<<< orphan*/  common; int /*<<< orphan*/  qdisc; } ;
struct TYPE_2__ {struct cbq_class* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cbq_sched_data* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cbq_class *this)
{
	struct cbq_class *cl, **clp;
	struct cbq_sched_data *q = FUNC2(this->qdisc);

	FUNC1(&q->clhash, &this->common);

	if (this->tparent) {
		clp = &this->sibling;
		cl = *clp;
		do {
			if (cl == this) {
				*clp = cl->sibling;
				break;
			}
			clp = &cl->sibling;
		} while ((cl = *clp) != this->sibling);

		if (this->tparent->children == this) {
			this->tparent->children = this->sibling;
			if (this->sibling == this)
				this->tparent->children = NULL;
		}
	} else {
		FUNC0(this->sibling != this);
	}
}