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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct batadv_priv {TYPE_1__ mcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_MCAST_WORK_PERIOD ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct batadv_priv *bat_priv)
{
	FUNC1(batadv_event_workqueue, &bat_priv->mcast.work,
			   FUNC0(BATADV_MCAST_WORK_PERIOD));
}