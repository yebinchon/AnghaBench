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
struct func_node {int idx; unsigned int start; } ;
struct dump_data {int dummy; } ;
struct bb_node {scalar_t__ idx; unsigned int head; int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 scalar_t__ ENTRY_BLOCK_INDEX ; 
 scalar_t__ EXIT_BLOCK_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct dump_data*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dump_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dump_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(struct func_node *func, struct bb_node *bb)
{
	const char *shape;

	if (bb->idx == ENTRY_BLOCK_INDEX || bb->idx == EXIT_BLOCK_INDEX)
		shape = "Mdiamond";
	else
		shape = "record";

	FUNC3("\tfn_%d_bb_%d [shape=%s,style=filled,label=\"",
	       func->idx, bb->idx, shape);

	if (bb->idx == ENTRY_BLOCK_INDEX) {
		FUNC3("ENTRY");
	} else if (bb->idx == EXIT_BLOCK_INDEX) {
		FUNC3("EXIT");
	} else {
		unsigned int start_idx;
		struct dump_data dd = {};

		FUNC3("{");
		FUNC2(&dd);
		start_idx = bb->head - func->start;
		FUNC0(&dd, bb->head, bb->tail, start_idx);
		FUNC1(&dd);
		FUNC3("}");
	}

	FUNC3("\"];\n\n");
}