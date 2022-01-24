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
struct rb_root {int dummy; } ;
struct rb_node {scalar_t__ rb_right; scalar_t__ rb_left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*,struct rb_node*,struct rb_node*,struct rb_root*) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct rb_node*) ; 

void FUNC3(struct rb_node *victim, struct rb_node *new,
		     struct rb_root *root)
{
	struct rb_node *parent = FUNC1(victim);

	/* Copy the pointers/colour from the victim to the replacement */
	*new = *victim;

	/* Set the surrounding nodes to point to the replacement */
	if (victim->rb_left)
		FUNC2(victim->rb_left, new);
	if (victim->rb_right)
		FUNC2(victim->rb_right, new);
	FUNC0(victim, new, parent, root);
}