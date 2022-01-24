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
struct klist_node {int /*<<< orphan*/  n_node; } ;
struct klist {int /*<<< orphan*/  k_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct klist*,struct klist_node*) ; 
 struct klist* FUNC1 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct klist_node *n, struct klist_node *pos)
{
	struct klist *k = FUNC1(pos);

	FUNC0(k, n);
	FUNC3(&k->k_lock);
	FUNC2(&n->n_node, &pos->n_node);
	FUNC4(&k->k_lock);
}