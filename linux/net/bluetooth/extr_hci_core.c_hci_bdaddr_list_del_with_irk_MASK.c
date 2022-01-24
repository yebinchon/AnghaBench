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
typedef  int /*<<< orphan*/  u8 ;
struct list_head {int dummy; } ;
struct bdaddr_list_with_irk {int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct bdaddr_list_with_irk* FUNC2 (struct list_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bdaddr_list_with_irk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct list_head *list, bdaddr_t *bdaddr,
							u8 type)
{
	struct bdaddr_list_with_irk *entry;

	if (!FUNC0(bdaddr, BDADDR_ANY)) {
		FUNC1(list);
		return 0;
	}

	entry = FUNC2(list, bdaddr, type);
	if (!entry)
		return -ENOENT;

	FUNC4(&entry->list);
	FUNC3(entry);

	return 0;
}