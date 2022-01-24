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
struct hci_ev_le_conn_update_complete {int /*<<< orphan*/  supervision_timeout; int /*<<< orphan*/  latency; int /*<<< orphan*/  interval; int /*<<< orphan*/  handle; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {void* le_supv_timeout; void* le_conn_latency; void* le_conn_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev,
					    struct sk_buff *skb)
{
	struct hci_ev_le_conn_update_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	if (ev->status)
		return;

	FUNC3(hdev);

	conn = FUNC2(hdev, FUNC1(ev->handle));
	if (conn) {
		conn->le_conn_interval = FUNC5(ev->interval);
		conn->le_conn_latency = FUNC5(ev->latency);
		conn->le_supv_timeout = FUNC5(ev->supervision_timeout);
	}

	FUNC4(hdev);
}