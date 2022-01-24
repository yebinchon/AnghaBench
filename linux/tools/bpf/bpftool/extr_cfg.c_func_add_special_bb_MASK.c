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
struct func_node {int /*<<< orphan*/  bbs; } ;
struct bb_node {int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_BLOCK_INDEX ; 
 int /*<<< orphan*/  EXIT_BLOCK_INDEX ; 
 struct bb_node* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct func_node*) ; 

__attribute__((used)) static bool FUNC2(struct func_node *func)
{
	struct bb_node *bb;

	bb = FUNC0(&func->bbs);
	if (!bb)
		return true;
	bb->idx = ENTRY_BLOCK_INDEX;

	bb = FUNC0(&FUNC1(func)->l);
	if (!bb)
		return true;
	bb->idx = EXIT_BLOCK_INDEX;

	return false;
}