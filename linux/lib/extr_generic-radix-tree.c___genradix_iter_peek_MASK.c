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
struct genradix_root {int dummy; } ;
struct genradix_node {void* data; struct genradix_node** children; } ;
struct genradix_iter {int offset; size_t pos; } ;
struct __genradix {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int GENRADIX_ARY ; 
 size_t PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 struct genradix_root* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct genradix_root*) ; 
 struct genradix_node* FUNC4 (struct genradix_root*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 

void *FUNC7(struct genradix_iter *iter,
			   struct __genradix *radix,
			   size_t objs_per_page)
{
	struct genradix_root *r;
	struct genradix_node *n;
	unsigned level, i;
restart:
	r = FUNC0(radix->root);
	if (!r)
		return NULL;

	n	= FUNC4(r);
	level	= FUNC3(r);

	if (FUNC5(iter->offset) >= FUNC1(level))
		return NULL;

	while (level) {
		level--;

		i = (iter->offset >> FUNC1(level)) &
			(GENRADIX_ARY - 1);

		while (!n->children[i]) {
			i++;
			iter->offset = FUNC6(iter->offset +
					   FUNC2(level),
					   FUNC2(level));
			iter->pos = (iter->offset >> PAGE_SHIFT) *
				objs_per_page;
			if (i == GENRADIX_ARY)
				goto restart;
		}

		n = n->children[i];
	}

	return &n->data[iter->offset & (PAGE_SIZE - 1)];
}