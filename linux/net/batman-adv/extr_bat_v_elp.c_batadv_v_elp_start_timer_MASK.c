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
struct TYPE_2__ {int /*<<< orphan*/  elp_wq; int /*<<< orphan*/  elp_interval; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;

/* Variables and functions */
 int BATADV_JITTER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct batadv_hard_iface *hard_iface)
{
	unsigned int msecs;

	msecs = FUNC0(&hard_iface->bat_v.elp_interval) - BATADV_JITTER;
	msecs += FUNC2() % (2 * BATADV_JITTER);

	FUNC3(batadv_event_workqueue, &hard_iface->bat_v.elp_wq,
			   FUNC1(msecs));
}