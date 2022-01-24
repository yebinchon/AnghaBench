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
struct hci_conn {scalar_t__ key_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_CONN_AES_CCM ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 scalar_t__ FUNC2 (struct hci_conn*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct hci_conn *conn)
{
	FUNC0("hcon %p", conn);

	/* In Secure Connections Only mode, it is required that Secure
	 * Connections is used and the link is encrypted with AES-CCM
	 * using a P-256 authenticated combination key.
	 */
	if (FUNC3(conn->hdev, HCI_SC_ONLY)) {
		if (!FUNC1(conn) ||
		    !FUNC4(HCI_CONN_AES_CCM, &conn->flags) ||
		    conn->key_type != HCI_LK_AUTH_COMBINATION_P256)
			return 0;
	}

	if (FUNC2(conn) &&
	    !FUNC4(HCI_CONN_ENCRYPT, &conn->flags))
		return 0;

	return 1;
}