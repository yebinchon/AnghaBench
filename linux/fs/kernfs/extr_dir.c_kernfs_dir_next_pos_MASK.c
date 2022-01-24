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
struct rb_node {int dummy; } ;
struct kernfs_node {void const* ns; int /*<<< orphan*/  rb; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC1 (void const*,struct kernfs_node*,int /*<<< orphan*/ ,struct kernfs_node*) ; 
 struct rb_node* FUNC2 (int /*<<< orphan*/ *) ; 
 struct kernfs_node* FUNC3 (struct rb_node*) ; 

__attribute__((used)) static struct kernfs_node *FUNC4(const void *ns,
	struct kernfs_node *parent, ino_t ino, struct kernfs_node *pos)
{
	pos = FUNC1(ns, parent, ino, pos);
	if (pos) {
		do {
			struct rb_node *node = FUNC2(&pos->rb);
			if (!node)
				pos = NULL;
			else
				pos = FUNC3(node);
		} while (pos && (!FUNC0(pos) || pos->ns != ns));
	}
	return pos;
}