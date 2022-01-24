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
struct tep_handle {int printk_count; struct printk_list* printklist; struct printk_map* printk_map; } ;
struct printk_map {int /*<<< orphan*/  addr; int /*<<< orphan*/  printk; } ;
struct printk_list {struct printk_list* next; int /*<<< orphan*/  addr; int /*<<< orphan*/  printk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct printk_list*) ; 
 struct printk_map* FUNC1 (int) ; 
 int /*<<< orphan*/  printk_cmp ; 
 int /*<<< orphan*/  FUNC2 (struct printk_map*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tep_handle *tep)
{
	struct printk_list *printklist;
	struct printk_list *item;
	struct printk_map *printk_map;
	int i;

	printk_map = FUNC1(sizeof(*printk_map) * (tep->printk_count + 1));
	if (!printk_map)
		return -1;

	printklist = tep->printklist;

	i = 0;
	while (printklist) {
		printk_map[i].printk = printklist->printk;
		printk_map[i].addr = printklist->addr;
		i++;
		item = printklist;
		printklist = printklist->next;
		FUNC0(item);
	}

	FUNC2(printk_map, tep->printk_count, sizeof(*printk_map), printk_cmp);

	tep->printk_map = printk_map;
	tep->printklist = NULL;

	return 0;
}