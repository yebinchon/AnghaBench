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
struct tep_handle {TYPE_1__* printk_map; scalar_t__ printk_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  printk; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tep_handle*) ; 

void FUNC2(struct tep_handle *tep)
{
	int i;

	if (!tep->printk_map)
		FUNC1(tep);

	for (i = 0; i < (int)tep->printk_count; i++) {
		FUNC0("%016llx %s\n",
		       tep->printk_map[i].addr,
		       tep->printk_map[i].printk);
	}
}