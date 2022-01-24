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
struct timer_list {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  ip4_querier; int /*<<< orphan*/  ip4_own_query; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 struct net_bridge* br ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net_bridge* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__ ip4_own_query ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct net_bridge *br = FUNC1(br, t, ip4_own_query.timer);

	FUNC0(br, &br->ip4_own_query, &br->ip4_querier);
}