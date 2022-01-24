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
struct klist_iter {int /*<<< orphan*/ * i_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1(struct klist_iter *i)
{
	if (i->i_cur) {
		FUNC0(i->i_cur, false);
		i->i_cur = NULL;
	}
}