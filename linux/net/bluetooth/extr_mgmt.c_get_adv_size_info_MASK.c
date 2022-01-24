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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_get_adv_size_info {int instance; void* max_scan_rsp_len; void* max_adv_data_len; int /*<<< orphan*/  flags; } ;
struct mgmt_cp_get_adv_size_info {int instance; int /*<<< orphan*/  flags; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int HCI_MAX_ADV_INSTANCES ; 
 int /*<<< orphan*/  MGMT_OP_GET_ADV_SIZE_INFO ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_get_adv_size_info*,int) ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct hci_dev*,int,int) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct hci_dev *hdev,
			     void *data, u16 data_len)
{
	struct mgmt_cp_get_adv_size_info *cp = data;
	struct mgmt_rp_get_adv_size_info rp;
	u32 flags, supported_flags;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC3(hdev))
		return FUNC5(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
				       MGMT_STATUS_REJECTED);

	if (cp->instance < 1 || cp->instance > HCI_MAX_ADV_INSTANCES)
		return FUNC5(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
				       MGMT_STATUS_INVALID_PARAMS);

	flags = FUNC1(cp->flags);

	/* The current implementation only supports a subset of the specified
	 * flags.
	 */
	supported_flags = FUNC2(hdev);
	if (flags & ~supported_flags)
		return FUNC5(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
				       MGMT_STATUS_INVALID_PARAMS);

	rp.instance = cp->instance;
	rp.flags = cp->flags;
	rp.max_adv_data_len = FUNC6(hdev, flags, true);
	rp.max_scan_rsp_len = FUNC6(hdev, flags, false);

	err = FUNC4(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
				MGMT_STATUS_SUCCESS, &rp, sizeof(rp));

	return err;
}