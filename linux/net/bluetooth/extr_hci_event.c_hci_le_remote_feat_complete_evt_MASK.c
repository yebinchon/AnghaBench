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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_remote_feat_complete {int status; int /*<<< orphan*/  features; int /*<<< orphan*/  handle; } ;
struct hci_dev {int* le_features; int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  out; int /*<<< orphan*/ * features; } ;
typedef  int __u8 ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int HCI_LE_SLAVE_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev,
					    struct sk_buff *skb)
{
	struct hci_ev_le_remote_feat_complete *ev = (void *)skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	FUNC5(hdev);

	conn = FUNC3(hdev, FUNC1(ev->handle));
	if (conn) {
		if (!ev->status)
			FUNC7(conn->features[0], ev->features, 8);

		if (conn->state == BT_CONFIG) {
			__u8 status;

			/* If the local controller supports slave-initiated
			 * features exchange, but the remote controller does
			 * not, then it is possible that the error code 0x1a
			 * for unsupported remote feature gets returned.
			 *
			 * In this specific case, allow the connection to
			 * transition into connected state and mark it as
			 * successful.
			 */
			if ((hdev->le_features[0] & HCI_LE_SLAVE_FEATURES) &&
			    !conn->out && ev->status == 0x1a)
				status = 0x00;
			else
				status = ev->status;

			conn->state = BT_CONNECTED;
			FUNC4(conn, status);
			FUNC2(conn);
		}
	}

	FUNC6(hdev);
}