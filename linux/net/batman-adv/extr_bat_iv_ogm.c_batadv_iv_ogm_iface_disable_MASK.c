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
struct TYPE_2__ {int /*<<< orphan*/  ogm_buff_mutex; int /*<<< orphan*/ * ogm_buff; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct batadv_hard_iface *hard_iface)
{
	FUNC1(&hard_iface->bat_iv.ogm_buff_mutex);

	FUNC0(hard_iface->bat_iv.ogm_buff);
	hard_iface->bat_iv.ogm_buff = NULL;

	FUNC2(&hard_iface->bat_iv.ogm_buff_mutex);
}