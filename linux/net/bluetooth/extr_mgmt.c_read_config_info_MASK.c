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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_config_info {int /*<<< orphan*/  missing_options; int /*<<< orphan*/  supported_options; int /*<<< orphan*/  manufacturer; } ;
struct hci_dev {int /*<<< orphan*/  id; scalar_t__ set_bdaddr; int /*<<< orphan*/  quirks; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_QUIRK_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  MGMT_OPTION_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  MGMT_OPTION_PUBLIC_ADDRESS ; 
 int /*<<< orphan*/  MGMT_OP_READ_CONFIG_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_rp_read_config_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_read_config_info*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct hci_dev *hdev,
			    void *data, u16 data_len)
{
	struct mgmt_rp_read_config_info rp;
	u32 options = 0;

	FUNC0("sock %p %s", sk, hdev->name);

	FUNC4(hdev);

	FUNC6(&rp, 0, sizeof(rp));
	rp.manufacturer = FUNC1(hdev->manufacturer);

	if (FUNC8(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks))
		options |= MGMT_OPTION_EXTERNAL_CONFIG;

	if (hdev->set_bdaddr)
		options |= MGMT_OPTION_PUBLIC_ADDRESS;

	rp.supported_options = FUNC2(options);
	rp.missing_options = FUNC3(hdev);

	FUNC5(hdev);

	return FUNC7(sk, hdev->id, MGMT_OP_READ_CONFIG_INFO, 0,
				 &rp, sizeof(rp));
}