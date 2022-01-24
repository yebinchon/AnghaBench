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
struct discard_cmd_control {int /*<<< orphan*/  discard_cmd_cnt; int /*<<< orphan*/  undiscard_blks; int /*<<< orphan*/  root; int /*<<< orphan*/  queued_discard; } ;
struct discard_cmd {scalar_t__ state; scalar_t__ len; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  list; int /*<<< orphan*/  queued; } ;

/* Variables and functions */
 scalar_t__ D_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  discard_cmd_slab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct discard_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct discard_cmd_control *dcc,
							struct discard_cmd *dc)
{
	if (dc->state == D_DONE)
		FUNC1(dc->queued, &dcc->queued_discard);

	FUNC3(&dc->list);
	FUNC4(&dc->rb_node, &dcc->root);
	dcc->undiscard_blks -= dc->len;

	FUNC2(discard_cmd_slab, dc);

	FUNC0(&dcc->discard_cmd_cnt);
}