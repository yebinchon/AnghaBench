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
struct klist_node {int /*<<< orphan*/  n_ref; } ;
struct klist_iter {struct klist_node* i_cur; struct klist* i_klist; } ;
struct klist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct klist *k, struct klist_iter *i,
			  struct klist_node *n)
{
	i->i_klist = k;
	i->i_cur = NULL;
	if (n && FUNC0(&n->n_ref))
		i->i_cur = n;
}