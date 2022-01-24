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
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_ext_info {void* eir_len; int /*<<< orphan*/  eir; void* current_settings; void* supported_settings; void* manufacturer; int /*<<< orphan*/  version; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  id; scalar_t__ manufacturer; int /*<<< orphan*/  hci_ver; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_MGMT_DEV_CLASS_EVENTS ; 
 int /*<<< orphan*/  HCI_MGMT_EXT_INFO_EVENTS ; 
 int /*<<< orphan*/  HCI_MGMT_LOCAL_NAME_EVENTS ; 
 int /*<<< orphan*/  MGMT_OP_READ_EXT_INFO ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_read_ext_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct hci_dev *hdev,
				    void *data, u16 data_len)
{
	char buf[512];
	struct mgmt_rp_read_ext_info *rp = (void *)buf;
	u16 eir_len;

	FUNC0("sock %p %s", sk, hdev->name);

	FUNC11(&buf, 0, sizeof(buf));

	FUNC7(hdev);

	FUNC2(&rp->bdaddr, &hdev->bdaddr);

	rp->version = hdev->hci_ver;
	rp->manufacturer = FUNC3(hdev->manufacturer);

	rp->supported_settings = FUNC4(FUNC6(hdev));
	rp->current_settings = FUNC4(FUNC5(hdev));


	eir_len = FUNC1(hdev, rp->eir);
	rp->eir_len = FUNC3(eir_len);

	FUNC8(hdev);

	/* If this command is called at least once, then the events
	 * for class of device and local name changes are disabled
	 * and only the new extended controller information event
	 * is used.
	 */
	FUNC10(sk, HCI_MGMT_EXT_INFO_EVENTS);
	FUNC9(sk, HCI_MGMT_DEV_CLASS_EVENTS);
	FUNC9(sk, HCI_MGMT_LOCAL_NAME_EVENTS);

	return FUNC12(sk, hdev->id, MGMT_OP_READ_EXT_INFO, 0, rp,
				 sizeof(*rp) + eir_len);
}