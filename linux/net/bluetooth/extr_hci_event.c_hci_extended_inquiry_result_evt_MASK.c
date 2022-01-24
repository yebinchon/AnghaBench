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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct inquiry_data {int pscan_mode; int ssp_mode; int /*<<< orphan*/  rssi; int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  pscan_period_mode; int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct extended_inquiry_info {int /*<<< orphan*/  data; int /*<<< orphan*/  rssi; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  pscan_period_mode; int /*<<< orphan*/  pscan_rep_mode; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EIR_NAME_COMPLETE ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_PERIODIC_INQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct inquiry_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev,
					    struct sk_buff *skb)
{
	struct inquiry_data data;
	struct extended_inquiry_info *info = (void *) (skb->data + 1);
	int num_rsp = *((__u8 *) skb->data);
	size_t eir_len;

	FUNC0("%s num_rsp %d", hdev->name, num_rsp);

	if (!num_rsp)
		return;

	if (FUNC5(hdev, HCI_PERIODIC_INQ))
		return;

	FUNC4(hdev);

	for (; num_rsp; num_rsp--, info++) {
		u32 flags;
		bool name_known;

		FUNC1(&data.bdaddr, &info->bdaddr);
		data.pscan_rep_mode	= info->pscan_rep_mode;
		data.pscan_period_mode	= info->pscan_period_mode;
		data.pscan_mode		= 0x00;
		FUNC8(data.dev_class, info->dev_class, 3);
		data.clock_offset	= info->clock_offset;
		data.rssi		= info->rssi;
		data.ssp_mode		= 0x01;

		if (FUNC5(hdev, HCI_MGMT))
			name_known = FUNC2(info->data,
						  sizeof(info->data),
						  EIR_NAME_COMPLETE, NULL);
		else
			name_known = true;

		flags = FUNC7(hdev, &data, name_known);

		eir_len = FUNC3(info->data, sizeof(info->data));

		FUNC9(hdev, &info->bdaddr, ACL_LINK, 0x00,
				  info->dev_class, info->rssi,
				  flags, info->data, eir_len, NULL, 0);
	}

	FUNC6(hdev);
}