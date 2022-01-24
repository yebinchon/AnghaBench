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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct file {int dummy; } ;
struct eppoll_entry {int /*<<< orphan*/  llink; int /*<<< orphan*/  wait; struct epitem* base; int /*<<< orphan*/ * whead; } ;
struct TYPE_2__ {int events; } ;
struct epitem {int nwait; int /*<<< orphan*/  pwqlist; TYPE_1__ event; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int EPOLLEXCLUSIVE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct epitem* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ep_poll_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct eppoll_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwq_cache ; 

__attribute__((used)) static void FUNC6(struct file *file, wait_queue_head_t *whead,
				 poll_table *pt)
{
	struct epitem *epi = FUNC2(pt);
	struct eppoll_entry *pwq;

	if (epi->nwait >= 0 && (pwq = FUNC4(pwq_cache, GFP_KERNEL))) {
		FUNC3(&pwq->wait, ep_poll_callback);
		pwq->whead = whead;
		pwq->base = epi;
		if (epi->event.events & EPOLLEXCLUSIVE)
			FUNC1(whead, &pwq->wait);
		else
			FUNC0(whead, &pwq->wait);
		FUNC5(&pwq->llink, &epi->pwqlist);
		epi->nwait++;
	} else {
		/* We have to signal that an error occurred */
		epi->nwait = -1;
	}
}