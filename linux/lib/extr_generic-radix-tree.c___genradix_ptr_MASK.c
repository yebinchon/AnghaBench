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
struct __genradix {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 struct genradix_root* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct genradix_root*) ; 
 struct genradix_node* FUNC4 (struct genradix_root*) ; 
 size_t FUNC5 (size_t) ; 

void *FUNC6(struct __genradix *radix, size_t offset)
{
	struct genradix_root *r = FUNC0(radix->root);
	struct genradix_node *n = FUNC4(r);
	unsigned level		= FUNC3(r);

	if (FUNC5(offset) >= FUNC1(level))
		return NULL;

	while (1) {
		if (!n)
			return NULL;
		if (!level)
			break;

		level--;

		n = n->children[offset >> FUNC1(level)];
		offset &= FUNC2(level) - 1;
	}

	return &n->data[offset];
}