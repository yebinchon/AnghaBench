#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct l2cap_conn {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; scalar_t__ l2cap_data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * b; } ;
typedef  TYPE_1__ bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  BDADDR_LE_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct hci_conn* FUNC1 (struct hci_dev*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct hci_dev* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(char *buf, bdaddr_t *addr, u8 *addr_type,
			  struct l2cap_conn **conn)
{
	struct hci_conn *hcon;
	struct hci_dev *hdev;
	int n;

	n = FUNC5(buf, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx %hhu",
		   &addr->b[5], &addr->b[4], &addr->b[3],
		   &addr->b[2], &addr->b[1], &addr->b[0],
		   addr_type);

	if (n < 7)
		return -EINVAL;

	/* The LE_PUBLIC address type is ignored because of BDADDR_ANY */
	hdev = FUNC4(addr, BDADDR_ANY, BDADDR_LE_PUBLIC);
	if (!hdev)
		return -ENOENT;

	FUNC2(hdev);
	hcon = FUNC1(hdev, addr, *addr_type);
	FUNC3(hdev);

	if (!hcon)
		return -ENOENT;

	*conn = (struct l2cap_conn *)hcon->l2cap_data;

	FUNC0("conn %p dst %pMR type %d", *conn, &hcon->dst, hcon->dst_type);

	return 0;
}