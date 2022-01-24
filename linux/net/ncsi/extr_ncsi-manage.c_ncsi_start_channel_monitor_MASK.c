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
struct TYPE_2__ {int enabled; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;
struct ncsi_channel {TYPE_1__ monitor; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  NCSI_CHANNEL_MONITOR_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ncsi_channel *nc)
{
	unsigned long flags;

	FUNC2(&nc->lock, flags);
	FUNC0(nc->monitor.enabled);
	nc->monitor.enabled = true;
	nc->monitor.state = NCSI_CHANNEL_MONITOR_START;
	FUNC3(&nc->lock, flags);

	FUNC1(&nc->monitor.timer, jiffies + HZ);
}