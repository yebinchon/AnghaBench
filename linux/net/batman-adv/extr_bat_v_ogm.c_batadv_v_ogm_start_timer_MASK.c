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
struct TYPE_2__ {int /*<<< orphan*/  ogm_wq; } ;
struct batadv_priv {TYPE_1__ bat_v; int /*<<< orphan*/  orig_interval; } ;

/* Variables and functions */
 int BATADV_JITTER ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct batadv_priv *bat_priv)
{
	unsigned long msecs;
	/* this function may be invoked in different contexts (ogm rescheduling
	 * or hard_iface activation), but the work timer should not be reset
	 */
	if (FUNC1(&bat_priv->bat_v.ogm_wq))
		return;

	msecs = FUNC0(&bat_priv->orig_interval) - BATADV_JITTER;
	msecs += FUNC3() % (2 * BATADV_JITTER);
	FUNC4(batadv_event_workqueue, &bat_priv->bat_v.ogm_wq,
			   FUNC2(msecs));
}