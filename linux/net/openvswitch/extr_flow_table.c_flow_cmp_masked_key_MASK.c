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
struct sw_flow_key_range {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct sw_flow_key {int dummy; } ;
struct sw_flow {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct sw_flow_key const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const struct sw_flow *flow,
				const struct sw_flow_key *key,
				const struct sw_flow_key_range *range)
{
	return FUNC0(&flow->key, key, range->start, range->end);
}