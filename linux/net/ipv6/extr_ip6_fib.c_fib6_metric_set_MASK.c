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
typedef  int /*<<< orphan*/  u32 ;
struct fib6_info {struct dst_metrics* fib6_metrics; } ;
struct dst_metrics {int /*<<< orphan*/ * metrics; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct dst_metrics dst_default_metrics ; 
 struct dst_metrics* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(struct fib6_info *f6i, int metric, u32 val)
{
	if (!f6i)
		return;

	if (f6i->fib6_metrics == &dst_default_metrics) {
		struct dst_metrics *p = FUNC0(sizeof(*p), GFP_ATOMIC);

		if (!p)
			return;

		FUNC1(&p->refcnt, 1);
		f6i->fib6_metrics = p;
	}

	f6i->fib6_metrics->metrics[metric - 1] = val;
}