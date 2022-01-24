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
struct bdi_writeback {int /*<<< orphan*/  work_lock; int /*<<< orphan*/  dwork; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_registered ; 
 int /*<<< orphan*/  bdi_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bdi_writeback *wb)
{
	FUNC1(&wb->work_lock);
	if (FUNC3(WB_registered, &wb->state))
		FUNC0(bdi_wq, &wb->dwork, 0);
	FUNC2(&wb->work_lock);
}