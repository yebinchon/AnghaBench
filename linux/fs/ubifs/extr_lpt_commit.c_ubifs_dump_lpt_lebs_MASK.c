#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubifs_info {int lpt_lebs; scalar_t__ lpt_first; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void FUNC2(const struct ubifs_info *c)
{
	int i;

	FUNC1("(pid %d) start dumping all LPT LEBs\n", current->pid);
	for (i = 0; i < c->lpt_lebs; i++)
		FUNC0(c, i + c->lpt_first);
	FUNC1("(pid %d) finish dumping all LPT LEBs\n", current->pid);
}