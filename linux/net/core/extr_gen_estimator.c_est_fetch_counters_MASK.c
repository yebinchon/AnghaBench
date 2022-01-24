#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_rate_estimator {scalar_t__ stats_lock; int /*<<< orphan*/  bstats; int /*<<< orphan*/  cpu_bstats; int /*<<< orphan*/  running; } ;
struct gnet_stats_basic_packed {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gnet_stats_basic_packed*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gnet_stats_basic_packed*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_rate_estimator *e,
			       struct gnet_stats_basic_packed *b)
{
	FUNC1(b, 0, sizeof(*b));
	if (e->stats_lock)
		FUNC2(e->stats_lock);

	FUNC0(e->running, b, e->cpu_bstats, e->bstats);

	if (e->stats_lock)
		FUNC3(e->stats_lock);

}