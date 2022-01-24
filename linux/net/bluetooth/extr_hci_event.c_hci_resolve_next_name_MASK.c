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
struct inquiry_entry {int /*<<< orphan*/  name_state; } ;
struct discovery_state {int /*<<< orphan*/  resolve; } ;
struct hci_dev {struct discovery_state discovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  NAME_NEEDED ; 
 int /*<<< orphan*/  NAME_PENDING ; 
 struct inquiry_entry* FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hci_dev*,struct inquiry_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct hci_dev *hdev)
{
	struct discovery_state *discov = &hdev->discovery;
	struct inquiry_entry *e;

	if (FUNC2(&discov->resolve))
		return false;

	e = FUNC0(hdev, BDADDR_ANY, NAME_NEEDED);
	if (!e)
		return false;

	if (FUNC1(hdev, e) == 0) {
		e->name_state = NAME_PENDING;
		return true;
	}

	return false;
}