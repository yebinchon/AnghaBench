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
struct tasklet_struct {void (* func ) (unsigned long) ;unsigned long data; int /*<<< orphan*/  count; scalar_t__ state; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct tasklet_struct *t,
		  void (*func)(unsigned long), unsigned long data)
{
	t->next = NULL;
	t->state = 0;
	FUNC0(&t->count, 0);
	t->func = func;
	t->data = data;
}