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
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_read_local_oob_ext_data {int dummy; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_OOB_DATA ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_OOB_EXT_DATA ; 
 int /*<<< orphan*/  MGMT_OP_READ_LOCAL_OOB_EXT_DATA ; 
 scalar_t__ FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,struct hci_dev*) ; 
 int FUNC3 (struct hci_request*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC4 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_cp_read_local_oob_ext_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  read_local_oob_ext_data_complete ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev, struct sock *sk,
				  struct mgmt_cp_read_local_oob_ext_data *cp)
{
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	cmd = FUNC4(sk, MGMT_OP_READ_LOCAL_OOB_EXT_DATA, hdev,
			       cp, sizeof(*cp));
	if (!cmd)
		return -ENOMEM;

	FUNC2(&req, hdev);

	if (FUNC0(hdev))
		FUNC1(&req, HCI_OP_READ_LOCAL_OOB_EXT_DATA, 0, NULL);
	else
		FUNC1(&req, HCI_OP_READ_LOCAL_OOB_DATA, 0, NULL);

	err = FUNC3(&req, read_local_oob_ext_data_complete);
	if (err < 0) {
		FUNC5(cmd);
		return err;
	}

	return 0;
}