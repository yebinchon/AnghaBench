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
struct xa_state {scalar_t__ xa_shift; } ;
struct xa_node {scalar_t__ shift; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 struct xa_node* FUNC1 (void*) ; 
 void* FUNC2 (struct xa_state*,struct xa_node*) ; 
 void* FUNC3 (struct xa_state*) ; 

void *FUNC4(struct xa_state *xas)
{
	void *entry = FUNC3(xas);

	while (FUNC0(entry)) {
		struct xa_node *node = FUNC1(entry);

		if (xas->xa_shift > node->shift)
			break;
		entry = FUNC2(xas, node);
		if (node->shift == 0)
			break;
	}
	return entry;
}