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
struct link_key {int /*<<< orphan*/  list; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 struct link_key* FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct link_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 

int FUNC4(struct hci_dev *hdev, bdaddr_t *bdaddr)
{
	struct link_key *key;

	key = FUNC1(hdev, bdaddr);
	if (!key)
		return -ENOENT;

	FUNC0("%s removing %pMR", hdev->name, bdaddr);

	FUNC3(&key->list);
	FUNC2(key, rcu);

	return 0;
}