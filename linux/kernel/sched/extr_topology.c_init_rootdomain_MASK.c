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
struct root_domain {int rto_cpu; int /*<<< orphan*/  span; int /*<<< orphan*/  online; int /*<<< orphan*/  dlo_mask; int /*<<< orphan*/  rto_mask; int /*<<< orphan*/  cpudl; int /*<<< orphan*/  cpupri; int /*<<< orphan*/  dl_bw; int /*<<< orphan*/  rto_push_work; int /*<<< orphan*/  rto_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rto_push_irq_work_func ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct root_domain *rd)
{
	if (!FUNC7(&rd->span, GFP_KERNEL))
		goto out;
	if (!FUNC7(&rd->online, GFP_KERNEL))
		goto free_span;
	if (!FUNC7(&rd->dlo_mask, GFP_KERNEL))
		goto free_online;
	if (!FUNC7(&rd->rto_mask, GFP_KERNEL))
		goto free_dlo_mask;

#ifdef HAVE_RT_PUSH_IPI
	rd->rto_cpu = -1;
	raw_spin_lock_init(&rd->rto_lock);
	init_irq_work(&rd->rto_push_work, rto_push_irq_work_func);
#endif

	FUNC4(&rd->dl_bw);
	if (FUNC1(&rd->cpudl) != 0)
		goto free_rto_mask;

	if (FUNC2(&rd->cpupri) != 0)
		goto free_cpudl;
	return 0;

free_cpudl:
	FUNC0(&rd->cpudl);
free_rto_mask:
	FUNC3(rd->rto_mask);
free_dlo_mask:
	FUNC3(rd->dlo_mask);
free_online:
	FUNC3(rd->online);
free_span:
	FUNC3(rd->span);
out:
	return -ENOMEM;
}