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
struct hci_conn {int /*<<< orphan*/  chan_list; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
struct hci_chan {int /*<<< orphan*/  list; int /*<<< orphan*/  state; int /*<<< orphan*/  data_q; int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_CONN_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 struct hci_chan* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct hci_chan *FUNC6(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;
	struct hci_chan *chan;

	FUNC0("%s hcon %p", hdev->name, conn);

	if (FUNC5(HCI_CONN_DROP, &conn->flags)) {
		FUNC0("Refusing to create new hci_chan");
		return NULL;
	}

	chan = FUNC2(sizeof(*chan), GFP_KERNEL);
	if (!chan)
		return NULL;

	chan->conn = FUNC1(conn);
	FUNC4(&chan->data_q);
	chan->state = BT_CONNECTED;

	FUNC3(&chan->list, &conn->chan_list);

	return chan;
}