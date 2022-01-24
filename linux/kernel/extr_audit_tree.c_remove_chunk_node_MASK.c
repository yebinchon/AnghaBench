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
struct node {struct audit_tree* owner; int /*<<< orphan*/  list; } ;
struct audit_tree {struct audit_chunk* root; int /*<<< orphan*/  same_root; } ;
struct audit_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_tree*) ; 

__attribute__((used)) static void FUNC2(struct audit_chunk *chunk, struct node *p)
{
	struct audit_tree *owner = p->owner;

	if (owner->root == chunk) {
		FUNC0(&owner->same_root);
		owner->root = NULL;
	}
	FUNC0(&p->list);
	p->owner = NULL;
	FUNC1(owner);
}