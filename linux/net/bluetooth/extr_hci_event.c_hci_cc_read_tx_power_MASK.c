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
struct hci_rp_read_tx_power {int /*<<< orphan*/  tx_power; int /*<<< orphan*/  handle; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_read_tx_power {int type; } ;
struct hci_conn {int /*<<< orphan*/  max_tx_power; int /*<<< orphan*/  tx_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_READ_TX_POWER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 struct hci_cp_read_tx_power* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_cp_read_tx_power *sent;
	struct hci_rp_read_tx_power *rp = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, rp->status);

	if (rp->status)
		return;

	sent = FUNC5(hdev, HCI_OP_READ_TX_POWER);
	if (!sent)
		return;

	FUNC3(hdev);

	conn = FUNC2(hdev, FUNC1(rp->handle));
	if (!conn)
		goto unlock;

	switch (sent->type) {
	case 0x00:
		conn->tx_power = rp->tx_power;
		break;
	case 0x01:
		conn->max_tx_power = rp->tx_power;
		break;
	}

unlock:
	FUNC4(hdev);
}