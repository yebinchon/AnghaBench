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
struct list_head {int dummy; } ;
struct bb_node {int /*<<< orphan*/  l; int /*<<< orphan*/  e_succs; int /*<<< orphan*/  e_prevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bb_node* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct bb_node *FUNC4(struct list_head *after)
{
	struct bb_node *bb;

	bb = FUNC1(1, sizeof(*bb));
	if (!bb) {
		FUNC3("OOM when allocating BB node");
		return NULL;
	}

	FUNC0(&bb->e_prevs);
	FUNC0(&bb->e_succs);
	FUNC2(&bb->l, after);

	return bb;
}