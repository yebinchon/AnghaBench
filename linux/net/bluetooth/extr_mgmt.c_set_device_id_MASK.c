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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_device_id {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  source; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int devid_source; int /*<<< orphan*/  id; void* devid_version; void* devid_product; void* devid_vendor; int /*<<< orphan*/  name; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_OP_SET_DEVICE_ID ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_request*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct hci_dev *hdev, void *data,
			 u16 len)
{
	struct mgmt_cp_set_device_id *cp = data;
	struct hci_request req;
	int err;
	__u16 source;

	FUNC0("%s", hdev->name);

	source = FUNC2(cp->source);

	if (source > 0x0002)
		return FUNC8(sk, hdev->id, MGMT_OP_SET_DEVICE_ID,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC3(hdev);

	hdev->devid_source = source;
	hdev->devid_vendor = FUNC2(cp->vendor);
	hdev->devid_product = FUNC2(cp->product);
	hdev->devid_version = FUNC2(cp->version);

	err = FUNC7(sk, hdev->id, MGMT_OP_SET_DEVICE_ID, 0,
				NULL, 0);

	FUNC5(&req, hdev);
	FUNC1(&req);
	FUNC6(&req, NULL);

	FUNC4(hdev);

	return err;
}