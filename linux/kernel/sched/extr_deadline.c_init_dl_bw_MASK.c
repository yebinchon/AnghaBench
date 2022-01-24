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
struct dl_bw {int bw; scalar_t__ total_bw; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dl_runtime_lock; } ;

/* Variables and functions */
 scalar_t__ RUNTIME_INF ; 
 TYPE_1__ def_dl_bandwidth ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct dl_bw *dl_b)
{
	FUNC3(&dl_b->lock);
	FUNC2(&def_dl_bandwidth.dl_runtime_lock);
	if (FUNC1() == RUNTIME_INF)
		dl_b->bw = -1;
	else
		dl_b->bw = FUNC5(FUNC0(), FUNC1());
	FUNC4(&def_dl_bandwidth.dl_runtime_lock);
	dl_b->total_bw = 0;
}