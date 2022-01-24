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
struct TYPE_2__ {int /*<<< orphan*/ * elp_skb; int /*<<< orphan*/  elp_wq; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct batadv_hard_iface *hard_iface)
{
	FUNC0(&hard_iface->bat_v.elp_wq);

	FUNC1(hard_iface->bat_v.elp_skb);
	hard_iface->bat_v.elp_skb = NULL;
}