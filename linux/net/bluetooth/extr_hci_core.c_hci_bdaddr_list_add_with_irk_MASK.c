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
struct bdaddr_list_with_irk {int /*<<< orphan*/  list; int /*<<< orphan*/  local_irk; int /*<<< orphan*/  peer_irk; int /*<<< orphan*/  bdaddr_type; int /*<<< orphan*/  bdaddr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int EBADF ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct list_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bdaddr_list_with_irk* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct list_head *list, bdaddr_t *bdaddr,
					u8 type, u8 *peer_irk, u8 *local_irk)
{
	struct bdaddr_list_with_irk *entry;

	if (!FUNC0(bdaddr, BDADDR_ANY))
		return -EBADF;

	if (FUNC2(list, bdaddr, type))
		return -EEXIST;

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	FUNC1(&entry->bdaddr, bdaddr);
	entry->bdaddr_type = type;

	if (peer_irk)
		FUNC5(entry->peer_irk, peer_irk, 16);

	if (local_irk)
		FUNC5(entry->local_irk, local_irk, 16);

	FUNC4(&entry->list, list);

	return 0;
}