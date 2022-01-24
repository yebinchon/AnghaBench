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
typedef  void* u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; void* auth_type; void* pending_sec_level; int /*<<< orphan*/  sec_level; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_OPEN ; 
 int /*<<< orphan*/  BT_SECURITY_LOW ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct hci_conn* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hci_dev*) ; 

struct hci_conn *FUNC7(struct hci_dev *hdev, bdaddr_t *dst,
				 u8 sec_level, u8 auth_type)
{
	struct hci_conn *acl;

	if (!FUNC5(hdev, HCI_BREDR_ENABLED)) {
		if (FUNC6(hdev))
			return FUNC0(-ECONNREFUSED);

		return FUNC0(-EOPNOTSUPP);
	}

	acl = FUNC3(hdev, ACL_LINK, dst);
	if (!acl) {
		acl = FUNC2(hdev, ACL_LINK, dst, HCI_ROLE_MASTER);
		if (!acl)
			return FUNC0(-ENOMEM);
	}

	FUNC4(acl);

	if (acl->state == BT_OPEN || acl->state == BT_CLOSED) {
		acl->sec_level = BT_SECURITY_LOW;
		acl->pending_sec_level = sec_level;
		acl->auth_type = auth_type;
		FUNC1(acl);
	}

	return acl;
}