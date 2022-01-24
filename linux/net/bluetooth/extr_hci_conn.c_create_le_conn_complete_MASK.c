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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC5 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, u8 status, u16 opcode)
{
	struct hci_conn *conn;

	FUNC2(hdev);

	conn = FUNC5(hdev);

	if (!status) {
		FUNC1(conn);
		goto done;
	}

	FUNC0(hdev, "request failed to create LE connection: "
		   "status 0x%2.2x", status);

	if (!conn)
		goto done;

	FUNC4(conn, status);

done:
	FUNC3(hdev);
}