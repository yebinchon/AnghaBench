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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_add_advertising {int instance; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_add_advertising {int instance; scalar_t__ adv_data_len; scalar_t__ scan_rsp_len; scalar_t__ data; int /*<<< orphan*/  duration; int /*<<< orphan*/  timeout; int /*<<< orphan*/  flags; } ;
struct hci_request {int dummy; } ;
struct hci_dev {unsigned int adv_instance_cnt; int cur_adv_instance; int /*<<< orphan*/  id; int /*<<< orphan*/  adv_instance_timeout; int /*<<< orphan*/  name; } ;
struct adv_info {int instance; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int HCI_MAX_ADV_INSTANCES ; 
 int MGMT_ADV_FLAG_SEC_MASK ; 
 int /*<<< orphan*/  MGMT_OP_ADD_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_REMOVE_ADVERTISING ; 
 int /*<<< orphan*/  MGMT_OP_SET_LE ; 
 int MGMT_STATUS_BUSY ; 
 int MGMT_STATUS_FAILED ; 
 int MGMT_STATUS_INVALID_PARAMS ; 
 int MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int FUNC1 (struct hci_request*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_advertising_complete ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct hci_dev*,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 struct adv_info* FUNC10 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_request*,struct hci_dev*) ; 
 int FUNC12 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct hci_dev*,int) ; 
 int FUNC15 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_add_advertising*,int) ; 
 int FUNC16 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct hci_dev*) ; 
 struct mgmt_pending_cmd* FUNC18 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct mgmt_pending_cmd*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct hci_dev*,int,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct hci_dev *hdev,
			   void *data, u16 data_len)
{
	struct mgmt_cp_add_advertising *cp = data;
	struct mgmt_rp_add_advertising rp;
	u32 flags;
	u32 supported_flags, phy_flags;
	u8 status;
	u16 timeout, duration;
	unsigned int prev_instance_cnt = hdev->adv_instance_cnt;
	u8 schedule_instance = 0;
	struct adv_info *next_instance;
	int err;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;

	FUNC0("%s", hdev->name);

	status = FUNC17(hdev);
	if (status)
		return FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				       status);

	if (cp->instance < 1 || cp->instance > HCI_MAX_ADV_INSTANCES)
		return FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				       MGMT_STATUS_INVALID_PARAMS);

	if (data_len != sizeof(*cp) + cp->adv_data_len + cp->scan_rsp_len)
		return FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				       MGMT_STATUS_INVALID_PARAMS);

	flags = FUNC3(cp->flags);
	timeout = FUNC2(cp->timeout);
	duration = FUNC2(cp->duration);

	/* The current implementation only supports a subset of the specified
	 * flags. Also need to check mutual exclusiveness of sec flags.
	 */
	supported_flags = FUNC5(hdev);
	phy_flags = flags & MGMT_ADV_FLAG_SEC_MASK;
	if (flags & ~supported_flags ||
	    ((phy_flags && (phy_flags ^ (phy_flags & -phy_flags)))))
		return FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC7(hdev);

	if (timeout && !FUNC13(hdev)) {
		err = FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				      MGMT_STATUS_REJECTED);
		goto unlock;
	}

	if (FUNC20(MGMT_OP_ADD_ADVERTISING, hdev) ||
	    FUNC20(MGMT_OP_REMOVE_ADVERTISING, hdev) ||
	    FUNC20(MGMT_OP_SET_LE, hdev)) {
		err = FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	if (!FUNC21(hdev, flags, cp->data, cp->adv_data_len, true) ||
	    !FUNC21(hdev, flags, cp->data + cp->adv_data_len,
			       cp->scan_rsp_len, false)) {
		err = FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				      MGMT_STATUS_INVALID_PARAMS);
		goto unlock;
	}

	err = FUNC6(hdev, cp->instance, flags,
				   cp->adv_data_len, cp->data,
				   cp->scan_rsp_len,
				   cp->data + cp->adv_data_len,
				   timeout, duration);
	if (err < 0) {
		err = FUNC16(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
				      MGMT_STATUS_FAILED);
		goto unlock;
	}

	/* Only trigger an advertising added event if a new instance was
	 * actually added.
	 */
	if (hdev->adv_instance_cnt > prev_instance_cnt)
		FUNC14(sk, hdev, cp->instance);

	if (hdev->cur_adv_instance == cp->instance) {
		/* If the currently advertised instance is being changed then
		 * cancel the current advertising and schedule the next
		 * instance. If there is only one instance then the overridden
		 * advertising data will be visible right away.
		 */
		FUNC4(hdev);

		next_instance = FUNC10(hdev, cp->instance);
		if (next_instance)
			schedule_instance = next_instance->instance;
	} else if (!hdev->adv_instance_timeout) {
		/* Immediately advertise the new instance if no other
		 * instance is currently being advertised.
		 */
		schedule_instance = cp->instance;
	}

	/* If the HCI_ADVERTISING flag is set or the device isn't powered or
	 * there is no instance to be advertised then we have no HCI
	 * communication to make. Simply return.
	 */
	if (!FUNC13(hdev) ||
	    FUNC8(hdev, HCI_ADVERTISING) ||
	    !schedule_instance) {
		rp.instance = cp->instance;
		err = FUNC15(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
					MGMT_STATUS_SUCCESS, &rp, sizeof(rp));
		goto unlock;
	}

	/* We're good to go, update advertising data, parameters, and start
	 * advertising.
	 */
	cmd = FUNC18(sk, MGMT_OP_ADD_ADVERTISING, hdev, data,
			       data_len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	FUNC11(&req, hdev);

	err = FUNC1(&req, schedule_instance, true);

	if (!err)
		err = FUNC12(&req, add_advertising_complete);

	if (err < 0)
		FUNC19(cmd);

unlock:
	FUNC9(hdev);

	return err;
}