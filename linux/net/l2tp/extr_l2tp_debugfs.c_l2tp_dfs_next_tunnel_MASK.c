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
struct l2tp_dfs_seq_data {int /*<<< orphan*/  tunnel_idx; int /*<<< orphan*/  net; scalar_t__ tunnel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct l2tp_dfs_seq_data *pd)
{
	/* Drop reference taken during previous invocation */
	if (pd->tunnel)
		FUNC0(pd->tunnel);

	pd->tunnel = FUNC1(pd->net, pd->tunnel_idx);
	pd->tunnel_idx++;
}