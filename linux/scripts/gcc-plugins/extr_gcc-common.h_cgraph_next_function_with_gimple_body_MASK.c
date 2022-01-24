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
struct cgraph_node {struct cgraph_node* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgraph_node*) ; 

__attribute__((used)) static inline struct cgraph_node *FUNC1(struct cgraph_node *node)
{
	for (node = node->next; node; node = node->next)
		if (FUNC0(node))
			return node;
	return NULL;
}