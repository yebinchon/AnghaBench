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
struct oob_data {int present; int /*<<< orphan*/  rand256; int /*<<< orphan*/  hash256; int /*<<< orphan*/  rand192; int /*<<< orphan*/  hash192; int /*<<< orphan*/  list; int /*<<< orphan*/  bdaddr_type; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  remote_oob_data; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct oob_data* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct oob_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct hci_dev *hdev, bdaddr_t *bdaddr,
			    u8 bdaddr_type, u8 *hash192, u8 *rand192,
			    u8 *hash256, u8 *rand256)
{
	struct oob_data *data;

	data = FUNC2(hdev, bdaddr, bdaddr_type);
	if (!data) {
		data = FUNC3(sizeof(*data), GFP_KERNEL);
		if (!data)
			return -ENOMEM;

		FUNC1(&data->bdaddr, bdaddr);
		data->bdaddr_type = bdaddr_type;
		FUNC4(&data->list, &hdev->remote_oob_data);
	}

	if (hash192 && rand192) {
		FUNC5(data->hash192, hash192, sizeof(data->hash192));
		FUNC5(data->rand192, rand192, sizeof(data->rand192));
		if (hash256 && rand256)
			data->present = 0x03;
	} else {
		FUNC6(data->hash192, 0, sizeof(data->hash192));
		FUNC6(data->rand192, 0, sizeof(data->rand192));
		if (hash256 && rand256)
			data->present = 0x02;
		else
			data->present = 0x00;
	}

	if (hash256 && rand256) {
		FUNC5(data->hash256, hash256, sizeof(data->hash256));
		FUNC5(data->rand256, rand256, sizeof(data->rand256));
	} else {
		FUNC6(data->hash256, 0, sizeof(data->hash256));
		FUNC6(data->rand256, 0, sizeof(data->rand256));
		if (hash192 && rand192)
			data->present = 0x01;
	}

	FUNC0("%s for %pMR", hdev->name, bdaddr);

	return 0;
}