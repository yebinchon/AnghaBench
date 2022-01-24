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
struct kprobe {int flags; int /*<<< orphan*/  hlist; int /*<<< orphan*/  list; scalar_t__ post_handler; int /*<<< orphan*/  fault_handler; int /*<<< orphan*/  pre_handler; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int KPROBE_FLAG_OPTIMIZED ; 
 int /*<<< orphan*/  aggr_fault_handler ; 
 scalar_t__ aggr_post_handler ; 
 int /*<<< orphan*/  aggr_pre_handler ; 
 int /*<<< orphan*/  FUNC2 (struct kprobe*,struct kprobe*) ; 
 int /*<<< orphan*/  FUNC3 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct kprobe *ap, struct kprobe *p)
{
	/* Copy p's insn slot to ap */
	FUNC2(p, ap);
	FUNC3(ap);
	ap->addr = p->addr;
	ap->flags = p->flags & ~KPROBE_FLAG_OPTIMIZED;
	ap->pre_handler = aggr_pre_handler;
	ap->fault_handler = aggr_fault_handler;
	/* We don't care the kprobe which has gone. */
	if (p->post_handler && !FUNC5(p))
		ap->post_handler = aggr_post_handler;

	FUNC1(&ap->list);
	FUNC0(&ap->hlist);

	FUNC6(&p->list, &ap->list);
	FUNC4(&p->hlist, &ap->hlist);
}