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
struct strfilter_node {int* p; struct strfilter_node* r; struct strfilter_node* l; } ;

/* Variables and functions */
 int FUNC0 (char const*,int*) ; 

__attribute__((used)) static bool FUNC1(struct strfilter_node *node,
				    const char *str)
{
	if (!node || !node->p)
		return false;

	switch (*node->p) {
	case '|':	/* OR */
		return FUNC1(node->l, str) ||
			FUNC1(node->r, str);
	case '&':	/* AND */
		return FUNC1(node->l, str) &&
			FUNC1(node->r, str);
	case '!':	/* NOT */
		return !FUNC1(node->r, str);
	default:
		return FUNC0(str, node->p);
	}
}