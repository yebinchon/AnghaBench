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
struct kretprobe_instance {int /*<<< orphan*/  hlist; struct kretprobe* rp; } ;
struct hlist_head {int dummy; } ;
struct kretprobe {int /*<<< orphan*/  lock; struct hlist_head free_instances; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct kretprobe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct kretprobe_instance *ri,
		     struct hlist_head *head)
{
	struct kretprobe *rp = ri->rp;

	/* remove rp inst off the rprobe_inst_table */
	FUNC2(&ri->hlist);
	FUNC0(&ri->hlist);
	if (FUNC3(rp)) {
		FUNC4(&rp->lock);
		FUNC1(&ri->hlist, &rp->free_instances);
		FUNC5(&rp->lock);
	} else
		/* Unregistering */
		FUNC1(&ri->hlist, head);
}