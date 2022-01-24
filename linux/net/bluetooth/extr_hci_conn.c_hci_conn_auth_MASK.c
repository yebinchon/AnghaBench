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
struct hci_cp_auth_requested {int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ pending_sec_level; scalar_t__ sec_level; int auth_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  hdev; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int /*<<< orphan*/  HCI_CONN_REAUTH_PEND ; 
 int /*<<< orphan*/  HCI_OP_AUTH_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct hci_cp_auth_requested*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_conn *conn, __u8 sec_level, __u8 auth_type)
{
	FUNC0("hcon %p", conn);

	if (conn->pending_sec_level > sec_level)
		sec_level = conn->pending_sec_level;

	if (sec_level > conn->sec_level)
		conn->pending_sec_level = sec_level;
	else if (FUNC5(HCI_CONN_AUTH, &conn->flags))
		return 1;

	/* Make sure we preserve an existing MITM requirement*/
	auth_type |= (conn->auth_type & 0x01);

	conn->auth_type = auth_type;

	if (!FUNC4(HCI_CONN_AUTH_PEND, &conn->flags)) {
		struct hci_cp_auth_requested cp;

		cp.handle = FUNC1(conn->handle);
		FUNC2(conn->hdev, HCI_OP_AUTH_REQUESTED,
			     sizeof(cp), &cp);

		/* If we're already encrypted set the REAUTH_PEND flag,
		 * otherwise set the ENCRYPT_PEND.
		 */
		if (FUNC5(HCI_CONN_ENCRYPT, &conn->flags))
			FUNC3(HCI_CONN_REAUTH_PEND, &conn->flags);
		else
			FUNC3(HCI_CONN_ENCRYPT_PEND, &conn->flags);
	}

	return 0;
}