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
struct oob_data {int /*<<< orphan*/  list; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 struct oob_data* FUNC1 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oob_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct hci_dev *hdev, bdaddr_t *bdaddr,
			       u8 bdaddr_type)
{
	struct oob_data *data;

	data = FUNC1(hdev, bdaddr, bdaddr_type);
	if (!data)
		return -ENOENT;

	FUNC0("%s removing %pMR (%u)", hdev->name, bdaddr, bdaddr_type);

	FUNC3(&data->list);
	FUNC2(data);

	return 0;
}