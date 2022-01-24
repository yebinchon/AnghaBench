#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ssp_mode; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_remote_ext_features {size_t page; int* features; int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_remote_name_req {int pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  dst; int /*<<< orphan*/ * features; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_MGMT_CONNECTED ; 
 int /*<<< orphan*/  HCI_CONN_SC_ENABLED ; 
 int /*<<< orphan*/  HCI_CONN_SSP_ENABLED ; 
 size_t HCI_MAX_PAGES ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_NAME_REQ ; 
 int LMP_HOST_SC ; 
 int LMP_HOST_SSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC9 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_remote_name_req*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_cp_remote_name_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*,struct hci_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct hci_dev *hdev,
					struct sk_buff *skb)
{
	struct hci_ev_remote_ext_features *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC7(hdev);

	conn = FUNC5(hdev, FUNC1(ev->handle));
	if (!conn)
		goto unlock;

	if (ev->page < HCI_MAX_PAGES)
		FUNC12(conn->features[ev->page], ev->features, 8);

	if (!ev->status && ev->page == 0x01) {
		struct inquiry_entry *ie;

		ie = FUNC9(hdev, &conn->dst);
		if (ie)
			ie->data.ssp_mode = (ev->features[0] & LMP_HOST_SSP);

		if (ev->features[0] & LMP_HOST_SSP) {
			FUNC15(HCI_CONN_SSP_ENABLED, &conn->flags);
		} else {
			/* It is mandatory by the Bluetooth specification that
			 * Extended Inquiry Results are only used when Secure
			 * Simple Pairing is enabled, but some devices violate
			 * this.
			 *
			 * To make these devices work, the internal SSP
			 * enabled flag needs to be cleared if the remote host
			 * features do not indicate SSP support */
			FUNC3(HCI_CONN_SSP_ENABLED, &conn->flags);
		}

		if (ev->features[0] & LMP_HOST_SC)
			FUNC15(HCI_CONN_SC_ENABLED, &conn->flags);
	}

	if (conn->state != BT_CONFIG)
		goto unlock;

	if (!ev->status && !FUNC17(HCI_CONN_MGMT_CONNECTED, &conn->flags)) {
		struct hci_cp_remote_name_req cp;
		FUNC13(&cp, 0, sizeof(cp));
		FUNC2(&cp.bdaddr, &conn->dst);
		cp.pscan_rep_mode = 0x02;
		FUNC11(hdev, HCI_OP_REMOTE_NAME_REQ, sizeof(cp), &cp);
	} else if (!FUNC16(HCI_CONN_MGMT_CONNECTED, &conn->flags))
		FUNC14(hdev, conn, 0, NULL, 0);

	if (!FUNC10(hdev, conn)) {
		conn->state = BT_CONNECTED;
		FUNC6(conn, ev->status);
		FUNC4(conn);
	}

unlock:
	FUNC8(hdev);
}