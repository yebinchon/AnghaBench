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
struct hci_cb {int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_cb_list ; 
 int /*<<< orphan*/  hci_cb_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct hci_cb *cb)
{
	FUNC0("%p name %s", cb, cb->name);

	FUNC2(&hci_cb_list_lock);
	FUNC1(&cb->list, &hci_cb_list);
	FUNC3(&hci_cb_list_lock);

	return 0;
}