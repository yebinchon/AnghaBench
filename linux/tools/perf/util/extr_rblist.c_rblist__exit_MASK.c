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
struct rblist {int /*<<< orphan*/  entries; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rblist*,struct rb_node*) ; 

void FUNC3(struct rblist *rblist)
{
	struct rb_node *pos, *next = FUNC0(&rblist->entries);

	while (next) {
		pos = next;
		next = FUNC1(pos);
		FUNC2(rblist, pos);
	}
}