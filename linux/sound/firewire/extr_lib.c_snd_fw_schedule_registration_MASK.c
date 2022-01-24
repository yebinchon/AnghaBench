#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct fw_unit {int dummy; } ;
struct delayed_work {int dummy; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {scalar_t__ reset_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROBE_DELAY_MS ; 
 TYPE_2__* FUNC0 (struct fw_unit*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct delayed_work*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

void FUNC5(struct fw_unit *unit,
				  struct delayed_work *dwork)
{
	u64 now, delay;

	now = FUNC1();
	delay = FUNC0(unit)->card->reset_jiffies
					+ FUNC3(PROBE_DELAY_MS);

	if (FUNC4(delay, now))
		delay -= now;
	else
		delay = 0;

	FUNC2(system_wq, dwork, delay);
}