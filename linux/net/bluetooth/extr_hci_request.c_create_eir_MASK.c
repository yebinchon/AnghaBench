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
typedef  int u8 ;
struct hci_dev {scalar_t__ inq_tx_power; scalar_t__ devid_source; scalar_t__ devid_vendor; scalar_t__ devid_product; scalar_t__ devid_version; int /*<<< orphan*/  dev_name; } ;

/* Variables and functions */
 int EIR_DEVICE_ID ; 
 int EIR_NAME_COMPLETE ; 
 int EIR_NAME_SHORT ; 
 int EIR_TX_POWER ; 
 scalar_t__ HCI_MAX_EIR_LENGTH ; 
 scalar_t__ HCI_TX_POWER_INVALID ; 
 int* FUNC0 (struct hci_dev*,int*,scalar_t__) ; 
 int* FUNC1 (struct hci_dev*,int*,scalar_t__) ; 
 int* FUNC2 (struct hci_dev*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, u8 *data)
{
	u8 *ptr = data;
	size_t name_len;

	name_len = FUNC5(hdev->dev_name);

	if (name_len > 0) {
		/* EIR Data type */
		if (name_len > 48) {
			name_len = 48;
			ptr[1] = EIR_NAME_SHORT;
		} else
			ptr[1] = EIR_NAME_COMPLETE;

		/* EIR Data length */
		ptr[0] = name_len + 1;

		FUNC3(ptr + 2, hdev->dev_name, name_len);

		ptr += (name_len + 2);
	}

	if (hdev->inq_tx_power != HCI_TX_POWER_INVALID) {
		ptr[0] = 2;
		ptr[1] = EIR_TX_POWER;
		ptr[2] = (u8) hdev->inq_tx_power;

		ptr += 3;
	}

	if (hdev->devid_source > 0) {
		ptr[0] = 9;
		ptr[1] = EIR_DEVICE_ID;

		FUNC4(hdev->devid_source, ptr + 2);
		FUNC4(hdev->devid_vendor, ptr + 4);
		FUNC4(hdev->devid_product, ptr + 6);
		FUNC4(hdev->devid_version, ptr + 8);

		ptr += 10;
	}

	ptr = FUNC1(hdev, ptr, HCI_MAX_EIR_LENGTH - (ptr - data));
	ptr = FUNC2(hdev, ptr, HCI_MAX_EIR_LENGTH - (ptr - data));
	ptr = FUNC0(hdev, ptr, HCI_MAX_EIR_LENGTH - (ptr - data));
}