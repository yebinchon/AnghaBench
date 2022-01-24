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
struct strfilter_node {struct strfilter_node* r; struct strfilter_node* l; int /*<<< orphan*/ * p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strfilter_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 

__attribute__((used)) static void FUNC3(struct strfilter_node *node)
{
	if (node) {
		if (node->p && !FUNC1(*node->p))
			FUNC2((char **)&node->p);
		FUNC3(node->l);
		FUNC3(node->r);
		FUNC0(node);
	}
}