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
struct sw_flow_match {int /*<<< orphan*/  range; int /*<<< orphan*/  key; } ;
struct sw_flow {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (struct sw_flow const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sw_flow const*,struct sw_flow_match const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(const struct sw_flow *flow, const struct sw_flow_match *match)
{
	if (FUNC2(&flow->id))
		return FUNC0(flow, match->key, &match->range);

	return FUNC1(flow, match);
}