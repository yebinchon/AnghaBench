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
struct nlattr {int dummy; } ;
struct Qdisc_ops {int /*<<< orphan*/  owner; int /*<<< orphan*/  id; struct Qdisc_ops* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct Qdisc_ops* qdisc_base ; 
 int /*<<< orphan*/  qdisc_mod_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct Qdisc_ops *FUNC4(struct nlattr *kind)
{
	struct Qdisc_ops *q = NULL;

	if (kind) {
		FUNC1(&qdisc_mod_lock);
		for (q = qdisc_base; q; q = q->next) {
			if (FUNC0(kind, q->id) == 0) {
				if (!FUNC3(q->owner))
					q = NULL;
				break;
			}
		}
		FUNC2(&qdisc_mod_lock);
	}
	return q;
}