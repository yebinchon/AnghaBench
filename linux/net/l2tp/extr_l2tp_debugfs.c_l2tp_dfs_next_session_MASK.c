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
struct l2tp_dfs_seq_data {scalar_t__ session_idx; int /*<<< orphan*/ * session; int /*<<< orphan*/  tunnel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2tp_dfs_seq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct l2tp_dfs_seq_data *pd)
{
	/* Drop reference taken during previous invocation */
	if (pd->session)
		FUNC1(pd->session);

	pd->session = FUNC2(pd->tunnel, pd->session_idx);
	pd->session_idx++;

	if (pd->session == NULL) {
		pd->session_idx = 0;
		FUNC0(pd);
	}

}