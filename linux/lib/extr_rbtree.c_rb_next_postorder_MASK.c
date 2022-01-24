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
struct rb_node {scalar_t__ rb_right; struct rb_node const* rb_left; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (scalar_t__) ; 
 struct rb_node* FUNC1 (struct rb_node const*) ; 

struct rb_node *FUNC2(const struct rb_node *node)
{
	const struct rb_node *parent;
	if (!node)
		return NULL;
	parent = FUNC1(node);

	/* If we're sitting on node, we've already seen our children */
	if (parent && node == parent->rb_left && parent->rb_right) {
		/* If we are the parent's left node, go to the parent's right
		 * node then all the way down to the left */
		return FUNC0(parent->rb_right);
	} else
		/* Otherwise we are the parent's right node, and the parent
		 * should be next */
		return (struct rb_node *)parent;
}