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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
struct hci_chan {int /*<<< orphan*/  data_q; int /*<<< orphan*/  list; struct hci_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_conn*,struct hci_chan*) ; 
 int /*<<< orphan*/  HCI_CONN_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct hci_chan *chan)
{
	struct hci_conn *conn = chan->conn;
	struct hci_dev *hdev = conn->hdev;

	FUNC0("%s hcon %p chan %p", hdev->name, conn, chan);

	FUNC3(&chan->list);

	FUNC6();

	/* Prevent new hci_chan's to be created for this hci_conn */
	FUNC4(HCI_CONN_DROP, &conn->flags);

	FUNC1(conn);

	FUNC5(&chan->data_q);
	FUNC2(chan);
}