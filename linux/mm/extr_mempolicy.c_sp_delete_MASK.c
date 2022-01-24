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
struct sp_node {int /*<<< orphan*/  nd; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct shared_policy {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sp_node*) ; 

__attribute__((used)) static void FUNC3(struct shared_policy *sp, struct sp_node *n)
{
	FUNC0("deleting %lx-l%lx\n", n->start, n->end);
	FUNC1(&n->nd, &sp->root);
	FUNC2(n);
}