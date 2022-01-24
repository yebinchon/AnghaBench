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
struct o2nm_node {int dummy; } ;
struct dlm_master_list_entry {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  node_map; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dlm_ctxt *dlm,
			    struct dlm_master_list_entry *mle,
			    struct o2nm_node *node, int idx)
{
	FUNC2(&mle->spinlock);

	if (FUNC4(idx, mle->node_map))
		FUNC0(0, "node %u already in node map!\n", idx);
	else
		FUNC1(idx, mle->node_map);

	FUNC3(&mle->spinlock);
}