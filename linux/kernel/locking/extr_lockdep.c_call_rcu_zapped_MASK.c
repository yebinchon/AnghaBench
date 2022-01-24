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
struct pending_free {int /*<<< orphan*/  zapped; } ;
struct TYPE_2__ {int scheduled; int index; int /*<<< orphan*/  rcu_head; struct pending_free* pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ delayed_free ; 
 int /*<<< orphan*/  free_zapped_rcu ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pending_free *pf)
{
	FUNC0(FUNC2());

	if (FUNC3(&pf->zapped))
		return;

	if (delayed_free.scheduled)
		return;

	delayed_free.scheduled = true;

	FUNC0(delayed_free.pf + delayed_free.index != pf);
	delayed_free.index ^= 1;

	FUNC1(&delayed_free.rcu_head, free_zapped_rcu);
}