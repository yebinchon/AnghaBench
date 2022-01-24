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
struct bdi_writeback {TYPE_1__* bdi; int /*<<< orphan*/  congested; int /*<<< orphan*/  completions; int /*<<< orphan*/ * stat; int /*<<< orphan*/  dwork; } ;
struct TYPE_2__ {struct bdi_writeback wb; } ;

/* Variables and functions */
 int NR_WB_STAT_ITEMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bdi_writeback *wb)
{
	int i;

	FUNC0(FUNC2(&wb->dwork));

	for (i = 0; i < NR_WB_STAT_ITEMS; i++)
		FUNC4(&wb->stat[i]);

	FUNC3(&wb->completions);
	FUNC5(wb->congested);
	if (wb != &wb->bdi->wb)
		FUNC1(wb->bdi);
}