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
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_clock {int /*<<< orphan*/  accuracy; int /*<<< orphan*/  clock; int /*<<< orphan*/  handle; scalar_t__ status; } ;
struct hci_dev {void* clock; int /*<<< orphan*/  name; } ;
struct hci_cp_read_clock {int which; } ;
struct hci_conn {int /*<<< orphan*/  clock_accuracy; void* clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_READ_CLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 struct hci_cp_read_clock* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_read_clock *rp = (void *) skb->data;
	struct hci_cp_read_clock *cp;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	if (skb->len < sizeof(*rp))
		return;

	if (rp->status)
		return;

	FUNC3(hdev);

	cp = FUNC5(hdev, HCI_OP_READ_CLOCK);
	if (!cp)
		goto unlock;

	if (cp->which == 0x00) {
		hdev->clock = FUNC7(rp->clock);
		goto unlock;
	}

	conn = FUNC2(hdev, FUNC1(rp->handle));
	if (conn) {
		conn->clock = FUNC7(rp->clock);
		conn->clock_accuracy = FUNC6(rp->accuracy);
	}

unlock:
	FUNC4(hdev);
}