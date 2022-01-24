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
struct hci_conn {int /*<<< orphan*/  handle; int /*<<< orphan*/  hdev; struct hci_conn* link; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct hci_conn *conn, __u8 status)
{
	struct hci_conn *sco = conn->link;

	if (!sco)
		return;

	FUNC0("hcon %p", conn);

	if (!status) {
		if (FUNC5(conn->hdev))
			FUNC4(sco, conn->handle);
		else
			FUNC1(sco, conn->handle);
	} else {
		FUNC3(sco, status);
		FUNC2(sco);
	}
}