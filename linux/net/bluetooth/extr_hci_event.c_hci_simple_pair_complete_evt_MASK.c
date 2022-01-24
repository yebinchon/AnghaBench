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
struct hci_ev_simple_pair_complete {scalar_t__ status; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int remote_auth; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev,
					 struct sk_buff *skb)
{
	struct hci_ev_simple_pair_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC3(hdev);

	conn = FUNC2(hdev, ACL_LINK, &ev->bdaddr);
	if (!conn)
		goto unlock;

	/* Reset the authentication requirement to unknown */
	conn->remote_auth = 0xff;

	/* To avoid duplicate auth_failed events to user space we check
	 * the HCI_CONN_AUTH_PEND flag which will be set if we
	 * initiated the authentication. A traditional auth_complete
	 * event gets always produced as initiator and is also mapped to
	 * the mgmt_auth_failed event */
	if (!FUNC6(HCI_CONN_AUTH_PEND, &conn->flags) && ev->status)
		FUNC5(conn, ev->status);

	FUNC1(conn);

unlock:
	FUNC4(hdev);
}