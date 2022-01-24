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
struct rb_node {int /*<<< orphan*/  __rb_parent_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*,struct rb_node*,struct rb_node*,struct rb_root*) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rb_node*,struct rb_node*,int) ; 

__attribute__((used)) static inline void
FUNC3(struct rb_node *old, struct rb_node *new,
			struct rb_root *root, int color)
{
	struct rb_node *parent = FUNC1(old);
	new->__rb_parent_color = old->__rb_parent_color;
	FUNC2(old, new, color);
	FUNC0(old, new, parent, root);
}