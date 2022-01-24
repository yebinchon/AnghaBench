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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ aggr_len; int /*<<< orphan*/  aggr_list; int /*<<< orphan*/  aggr_list_lock; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct batadv_hard_iface *hard_iface)
{
	struct sk_buff *skb;

	FUNC1(&hard_iface->bat_v.aggr_list_lock);

	while ((skb = FUNC2(&hard_iface->bat_v.aggr_list)))
		FUNC0(skb);

	hard_iface->bat_v.aggr_len = 0;
}