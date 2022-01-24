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
typedef  void* u64 ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct callchain_cursor_node {int branch; int nr_loop_iter; char const* srcline; struct callchain_cursor_node* next; void* branch_from; int /*<<< orphan*/  branch_flags; void* iter_cycles; struct symbol* sym; int /*<<< orphan*/  map; void* ip; } ;
struct callchain_cursor {struct callchain_cursor_node** last; int /*<<< orphan*/  nr; } ;
struct branch_flags {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct callchain_cursor_node* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct branch_flags*,int) ; 

int FUNC4(struct callchain_cursor *cursor,
			    u64 ip, struct map *map, struct symbol *sym,
			    bool branch, struct branch_flags *flags,
			    int nr_loop_iter, u64 iter_cycles, u64 branch_from,
			    const char *srcline)
{
	struct callchain_cursor_node *node = *cursor->last;

	if (!node) {
		node = FUNC0(1, sizeof(*node));
		if (!node)
			return -ENOMEM;

		*cursor->last = node;
	}

	node->ip = ip;
	FUNC2(node->map);
	node->map = FUNC1(map);
	node->sym = sym;
	node->branch = branch;
	node->nr_loop_iter = nr_loop_iter;
	node->iter_cycles = iter_cycles;
	node->srcline = srcline;

	if (flags)
		FUNC3(&node->branch_flags, flags,
			sizeof(struct branch_flags));

	node->branch_from = branch_from;
	cursor->nr++;

	cursor->last = &node->next;

	return 0;
}