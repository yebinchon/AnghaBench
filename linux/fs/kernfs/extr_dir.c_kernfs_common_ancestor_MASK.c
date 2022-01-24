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
struct kernfs_root {int /*<<< orphan*/  kn; } ;
struct kernfs_node {struct kernfs_node* parent; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,struct kernfs_node*) ; 
 struct kernfs_root* FUNC1 (struct kernfs_node*) ; 

__attribute__((used)) static struct kernfs_node *FUNC2(struct kernfs_node *a,
						  struct kernfs_node *b)
{
	size_t da, db;
	struct kernfs_root *ra = FUNC1(a), *rb = FUNC1(b);

	if (ra != rb)
		return NULL;

	da = FUNC0(ra->kn, a);
	db = FUNC0(rb->kn, b);

	while (da > db) {
		a = a->parent;
		da--;
	}
	while (db > da) {
		b = b->parent;
		db--;
	}

	/* worst case b and a will be the same at root */
	while (b != a) {
		b = b->parent;
		a = a->parent;
	}

	return a;
}