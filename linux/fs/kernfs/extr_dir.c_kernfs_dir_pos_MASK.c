#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct TYPE_4__ {TYPE_1__ children; } ;
struct kernfs_node {scalar_t__ hash; void const* ns; int /*<<< orphan*/  rb; TYPE_2__ dir; struct kernfs_node* parent; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 struct rb_node* FUNC2 (int /*<<< orphan*/ *) ; 
 struct kernfs_node* FUNC3 (struct rb_node*) ; 

__attribute__((used)) static struct kernfs_node *FUNC4(const void *ns,
	struct kernfs_node *parent, loff_t hash, struct kernfs_node *pos)
{
	if (pos) {
		int valid = FUNC0(pos) &&
			pos->parent == parent && hash == pos->hash;
		FUNC1(pos);
		if (!valid)
			pos = NULL;
	}
	if (!pos && (hash > 1) && (hash < INT_MAX)) {
		struct rb_node *node = parent->dir.children.rb_node;
		while (node) {
			pos = FUNC3(node);

			if (hash < pos->hash)
				node = node->rb_left;
			else if (hash > pos->hash)
				node = node->rb_right;
			else
				break;
		}
	}
	/* Skip over entries which are dying/dead or in the wrong namespace */
	while (pos && (!FUNC0(pos) || pos->ns != ns)) {
		struct rb_node *node = FUNC2(&pos->rb);
		if (!node)
			pos = NULL;
		else
			pos = FUNC3(node);
	}
	return pos;
}