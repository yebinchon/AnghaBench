#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_class; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_conn_request {scalar_t__ link_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  dev_class; } ;
struct hci_dev {int link_mode; int voice_setting; int /*<<< orphan*/  whitelist; int /*<<< orphan*/  blacklist; int /*<<< orphan*/  name; } ;
struct hci_cp_accept_sync_conn_req {int role; int retrans_effort; void* content_format; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; int /*<<< orphan*/  bdaddr; } ;
struct hci_cp_accept_conn_req {int role; int retrans_effort; void* content_format; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {int pkt_type; void* state; int /*<<< orphan*/  dev_class; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int __u8 ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 void* BT_CONNECT ; 
 void* BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  HCI_CONNECTABLE ; 
 int HCI_LM_ACCEPT ; 
 int HCI_LM_MASTER ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_CONN_REQ ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_SYNC_CONN_REQ ; 
 int HCI_PROTO_DEFER ; 
 int /*<<< orphan*/  HCI_ROLE_SLAVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC6 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC7 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 scalar_t__ FUNC10 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC12 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_accept_sync_conn_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*) ; 
 scalar_t__ FUNC17 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_conn_request *ev = (void *) skb->data;
	int mask = hdev->link_mode;
	struct inquiry_entry *ie;
	struct hci_conn *conn;
	__u8 flags = 0;

	FUNC0("%s bdaddr %pMR type 0x%x", hdev->name, &ev->bdaddr,
	       ev->link_type);

	mask |= FUNC13(hdev, &ev->bdaddr, ev->link_type,
				      &flags);

	if (!(mask & HCI_LM_ACCEPT)) {
		FUNC14(hdev, &ev->bdaddr);
		return;
	}

	if (FUNC5(&hdev->blacklist, &ev->bdaddr,
				   BDADDR_BREDR)) {
		FUNC14(hdev, &ev->bdaddr);
		return;
	}

	/* Require HCI_CONNECTABLE or a whitelist entry to accept the
	 * connection. These features are only touched through mgmt so
	 * only do the checks if HCI_MGMT is set.
	 */
	if (FUNC10(hdev, HCI_MGMT) &&
	    !FUNC10(hdev, HCI_CONNECTABLE) &&
	    !FUNC5(&hdev->whitelist, &ev->bdaddr,
				    BDADDR_BREDR)) {
		    FUNC14(hdev, &ev->bdaddr);
		    return;
	}

	/* Connection accepted */

	FUNC9(hdev);

	ie = FUNC12(hdev, &ev->bdaddr);
	if (ie)
		FUNC18(ie->data.dev_class, ev->dev_class, 3);

	conn = FUNC7(hdev, ev->link_type,
			&ev->bdaddr);
	if (!conn) {
		conn = FUNC6(hdev, ev->link_type, &ev->bdaddr,
				    HCI_ROLE_SLAVE);
		if (!conn) {
			FUNC2(hdev, "no memory for new connection");
			FUNC11(hdev);
			return;
		}
	}

	FUNC18(conn->dev_class, ev->dev_class, 3);

	FUNC11(hdev);

	if (ev->link_type == ACL_LINK ||
	    (!(flags & HCI_PROTO_DEFER) && !FUNC16(hdev))) {
		struct hci_cp_accept_conn_req cp;
		conn->state = BT_CONNECT;

		FUNC1(&cp.bdaddr, &ev->bdaddr);

		if (FUNC17(hdev) && (mask & HCI_LM_MASTER))
			cp.role = 0x00; /* Become master */
		else
			cp.role = 0x01; /* Remain slave */

		FUNC15(hdev, HCI_OP_ACCEPT_CONN_REQ, sizeof(cp), &cp);
	} else if (!(flags & HCI_PROTO_DEFER)) {
		struct hci_cp_accept_sync_conn_req cp;
		conn->state = BT_CONNECT;

		FUNC1(&cp.bdaddr, &ev->bdaddr);
		cp.pkt_type = FUNC3(conn->pkt_type);

		cp.tx_bandwidth   = FUNC4(0x00001f40);
		cp.rx_bandwidth   = FUNC4(0x00001f40);
		cp.max_latency    = FUNC3(0xffff);
		cp.content_format = FUNC3(hdev->voice_setting);
		cp.retrans_effort = 0xff;

		FUNC15(hdev, HCI_OP_ACCEPT_SYNC_CONN_REQ, sizeof(cp),
			     &cp);
	} else {
		conn->state = BT_CONNECT2;
		FUNC8(conn, 0);
	}
}