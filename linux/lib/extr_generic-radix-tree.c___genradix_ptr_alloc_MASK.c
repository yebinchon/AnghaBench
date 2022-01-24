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
struct genradix_root {void* data; struct genradix_root** children; } ;
struct genradix_node {void* data; struct genradix_node** children; } ;
struct __genradix {struct genradix_root* root; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct genradix_root* FUNC0 (struct genradix_root*) ; 
 struct genradix_root* FUNC1 (struct genradix_root**,struct genradix_root*,struct genradix_root*) ; 
 struct genradix_root* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct genradix_root*) ; 
 unsigned int FUNC6 (struct genradix_root*) ; 
 struct genradix_root* FUNC7 (struct genradix_root*) ; 
 size_t FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct genradix_root*,struct genradix_root*) ; 

void *FUNC10(struct __genradix *radix, size_t offset,
			   gfp_t gfp_mask)
{
	struct genradix_root *v = FUNC0(radix->root);
	struct genradix_node *n, *new_node = NULL;
	unsigned level;

	/* Increase tree depth if necessary: */
	while (1) {
		struct genradix_root *r = v, *new_root;

		n	= FUNC7(r);
		level	= FUNC6(r);

		if (n && FUNC8(offset) < FUNC3(level))
			break;

		if (!new_node) {
			new_node = FUNC2(gfp_mask);
			if (!new_node)
				return NULL;
		}

		new_node->children[0] = n;
		new_root = ((struct genradix_root *)
			    ((unsigned long) new_node | (n ? level + 1 : 0)));

		if ((v = FUNC1(&radix->root, r, new_root)) == r) {
			v = new_root;
			new_node = NULL;
		}
	}

	while (level--) {
		struct genradix_node **p =
			&n->children[offset >> FUNC3(level)];
		offset &= FUNC4(level) - 1;

		n = FUNC0(*p);
		if (!n) {
			if (!new_node) {
				new_node = FUNC2(gfp_mask);
				if (!new_node)
					return NULL;
			}

			if (!(n = FUNC1(p, NULL, new_node)))
				FUNC9(n, new_node);
		}
	}

	if (new_node)
		FUNC5(new_node);

	return &n->data[offset];
}