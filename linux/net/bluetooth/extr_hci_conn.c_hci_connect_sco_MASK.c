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
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  setting; struct hci_conn* link; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 scalar_t__ BT_OPEN ; 
 int /*<<< orphan*/  BT_POWER_FORCE_ACTIVE_ON ; 
 int /*<<< orphan*/  BT_SECURITY_LOW ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct hci_conn* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_AT_NO_BONDING ; 
 int /*<<< orphan*/  HCI_CONN_MODE_CHANGE_PEND ; 
 int /*<<< orphan*/  HCI_CONN_POWER_SAVE ; 
 int /*<<< orphan*/  HCI_CONN_SCO_SETUP_PEND ; 
 int /*<<< orphan*/  HCI_ROLE_MASTER ; 
 scalar_t__ FUNC1 (struct hci_conn*) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 struct hci_conn* FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct hci_conn *FUNC11(struct hci_dev *hdev, int type, bdaddr_t *dst,
				 __u16 setting)
{
	struct hci_conn *acl;
	struct hci_conn *sco;

	acl = FUNC7(hdev, dst, BT_SECURITY_LOW, HCI_AT_NO_BONDING);
	if (FUNC1(acl))
		return acl;

	sco = FUNC5(hdev, type, dst);
	if (!sco) {
		sco = FUNC2(hdev, type, dst, HCI_ROLE_MASTER);
		if (!sco) {
			FUNC3(acl);
			return FUNC0(-ENOMEM);
		}
	}

	acl->link = sco;
	sco->link = acl;

	FUNC6(sco);

	sco->setting = setting;

	if (acl->state == BT_CONNECTED &&
	    (sco->state == BT_OPEN || sco->state == BT_CLOSED)) {
		FUNC9(HCI_CONN_POWER_SAVE, &acl->flags);
		FUNC4(acl, BT_POWER_FORCE_ACTIVE_ON);

		if (FUNC10(HCI_CONN_MODE_CHANGE_PEND, &acl->flags)) {
			/* defer SCO setup until mode change completed */
			FUNC9(HCI_CONN_SCO_SETUP_PEND, &acl->flags);
			return sco;
		}

		FUNC8(acl, 0x00);
	}

	return sco;
}