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
typedef  int u16 ;
struct hci_dev {int dummy; } ;
struct hci_cp_accept_sync_conn_req {int role; int retrans_effort; void* max_latency; void* content_format; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; int /*<<< orphan*/  bdaddr; } ;
struct hci_cp_accept_conn_req {int role; int retrans_effort; void* max_latency; void* content_format; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {int pkt_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  state; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int ESCO_2EV3 ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_CONN_REQ ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_SYNC_CONN_REQ ; 
#define  SCO_AIRMODE_CVSD 129 
 int SCO_AIRMODE_MASK ; 
#define  SCO_AIRMODE_TRANSP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_accept_sync_conn_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC6(struct hci_conn *conn, u16 setting)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("conn %p", conn);

	conn->state = BT_CONFIG;

	if (!FUNC5(hdev)) {
		struct hci_cp_accept_conn_req cp;

		FUNC1(&cp.bdaddr, &conn->dst);
		cp.role = 0x00; /* Ignored */

		FUNC4(hdev, HCI_OP_ACCEPT_CONN_REQ, sizeof(cp), &cp);
	} else {
		struct hci_cp_accept_sync_conn_req cp;

		FUNC1(&cp.bdaddr, &conn->dst);
		cp.pkt_type = FUNC2(conn->pkt_type);

		cp.tx_bandwidth   = FUNC3(0x00001f40);
		cp.rx_bandwidth   = FUNC3(0x00001f40);
		cp.content_format = FUNC2(setting);

		switch (setting & SCO_AIRMODE_MASK) {
		case SCO_AIRMODE_TRANSP:
			if (conn->pkt_type & ESCO_2EV3)
				cp.max_latency = FUNC2(0x0008);
			else
				cp.max_latency = FUNC2(0x000D);
			cp.retrans_effort = 0x02;
			break;
		case SCO_AIRMODE_CVSD:
			cp.max_latency = FUNC2(0xffff);
			cp.retrans_effort = 0xff;
			break;
		}

		FUNC4(hdev, HCI_OP_ACCEPT_SYNC_CONN_REQ,
			     sizeof(cp), &cp);
	}
}