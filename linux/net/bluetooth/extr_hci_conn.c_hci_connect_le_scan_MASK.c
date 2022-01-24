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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ pending_sec_level; int /*<<< orphan*/  conn_timeout; int /*<<< orphan*/  sec_level; scalar_t__ dst_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_SECURITY_LOW ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct hci_conn* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_SCANNING ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  LE_LINK ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 scalar_t__ FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct hci_conn *FUNC10(struct hci_dev *hdev, bdaddr_t *dst,
				     u8 dst_type, u8 sec_level,
				     u16 conn_timeout)
{
	struct hci_conn *conn;

	/* Let's make sure that le is enabled.*/
	if (!FUNC5(hdev, HCI_LE_ENABLED)) {
		if (FUNC8(hdev))
			return FUNC1(-ECONNREFUSED);

		return FUNC1(-EOPNOTSUPP);
	}

	/* Some devices send ATT messages as soon as the physical link is
	 * established. To be able to handle these ATT messages, the user-
	 * space first establishes the connection and then starts the pairing
	 * process.
	 *
	 * So if a hci_conn object already exists for the following connection
	 * attempt, we simply update pending_sec_level and auth_type fields
	 * and return the object found.
	 */
	conn = FUNC3(hdev, dst, dst_type);
	if (conn) {
		if (conn->pending_sec_level < sec_level)
			conn->pending_sec_level = sec_level;
		goto done;
	}

	FUNC0("requesting refresh of dst_addr");

	conn = FUNC2(hdev, LE_LINK, dst, HCI_ROLE_MASTER);
	if (!conn)
		return FUNC1(-ENOMEM);

	if (FUNC6(hdev, dst, dst_type) < 0)
		return FUNC1(-EBUSY);

	conn->state = BT_CONNECT;
	FUNC9(HCI_CONN_SCANNING, &conn->flags);
	conn->dst_type = dst_type;
	conn->sec_level = BT_SECURITY_LOW;
	conn->pending_sec_level = sec_level;
	conn->conn_timeout = conn_timeout;

	FUNC7(hdev);

done:
	FUNC4(conn);
	return conn;
}