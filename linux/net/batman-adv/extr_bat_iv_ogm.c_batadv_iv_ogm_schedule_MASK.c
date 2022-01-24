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
struct TYPE_2__ {int /*<<< orphan*/  ogm_buff_mutex; } ;
struct batadv_hard_iface {scalar_t__ if_status; TYPE_1__ bat_iv; } ;

/* Variables and functions */
 scalar_t__ BATADV_IF_NOT_IN_USE ; 
 scalar_t__ BATADV_IF_TO_BE_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct batadv_hard_iface *hard_iface)
{
	if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
	    hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
		return;

	FUNC1(&hard_iface->bat_iv.ogm_buff_mutex);
	FUNC0(hard_iface);
	FUNC2(&hard_iface->bat_iv.ogm_buff_mutex);
}