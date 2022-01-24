#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct l2cap_conn {int local_fixed_chan; int /*<<< orphan*/  disc_reason; int /*<<< orphan*/  id_addr_update_work; int /*<<< orphan*/  pending_rx_work; int /*<<< orphan*/  pending_rx; int /*<<< orphan*/  info_timer; int /*<<< orphan*/  users; int /*<<< orphan*/  chan_l; int /*<<< orphan*/  chan_lock; int /*<<< orphan*/  ident_lock; scalar_t__ feat_mask; int /*<<< orphan*/  mtu; struct hci_chan* hchan; int /*<<< orphan*/  hcon; int /*<<< orphan*/  ref; } ;
struct hci_conn {int type; TYPE_1__* hdev; struct l2cap_conn* l2cap_data; } ;
struct hci_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  acl_mtu; int /*<<< orphan*/  le_mtu; } ;

/* Variables and functions */
 int ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,struct l2cap_conn*,struct hci_chan*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_ERROR_REMOTE_USER_TERM ; 
 int /*<<< orphan*/  HCI_FORCE_BREDR_SMP ; 
 int /*<<< orphan*/  HCI_HS_ENABLED ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int L2CAP_FC_A2MP ; 
 int L2CAP_FC_CONNLESS ; 
 int L2CAP_FC_SIG_BREDR ; 
 int L2CAP_FC_SMP_BREDR ; 
#define  LE_LINK 128 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 struct hci_chan* FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct l2cap_conn* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_conn_update_id_addr ; 
 int /*<<< orphan*/  l2cap_info_timeout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_pending_rx ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2cap_conn *FUNC13(struct hci_conn *hcon)
{
	struct l2cap_conn *conn = hcon->l2cap_data;
	struct hci_chan *hchan;

	if (conn)
		return conn;

	hchan = FUNC5(hcon);
	if (!hchan)
		return NULL;

	conn = FUNC10(sizeof(*conn), GFP_KERNEL);
	if (!conn) {
		FUNC6(hchan);
		return NULL;
	}

	FUNC9(&conn->ref);
	hcon->l2cap_data = conn;
	conn->hcon = FUNC7(hcon);
	conn->hchan = hchan;

	FUNC0("hcon %p conn %p hchan %p", hcon, conn, hchan);

	switch (hcon->type) {
	case LE_LINK:
		if (hcon->hdev->le_mtu) {
			conn->mtu = hcon->hdev->le_mtu;
			break;
		}
		/* fall through */
	default:
		conn->mtu = hcon->hdev->acl_mtu;
		break;
	}

	conn->feat_mask = 0;

	conn->local_fixed_chan = L2CAP_FC_SIG_BREDR | L2CAP_FC_CONNLESS;

	if (hcon->type == ACL_LINK &&
	    FUNC8(hcon->hdev, HCI_HS_ENABLED))
		conn->local_fixed_chan |= L2CAP_FC_A2MP;

	if (FUNC8(hcon->hdev, HCI_LE_ENABLED) &&
	    (FUNC4(hcon->hdev) ||
	     FUNC8(hcon->hdev, HCI_FORCE_BREDR_SMP)))
		conn->local_fixed_chan |= L2CAP_FC_SMP_BREDR;

	FUNC11(&conn->ident_lock);
	FUNC11(&conn->chan_lock);

	FUNC2(&conn->chan_l);
	FUNC2(&conn->users);

	FUNC1(&conn->info_timer, l2cap_info_timeout);

	FUNC12(&conn->pending_rx);
	FUNC3(&conn->pending_rx_work, process_pending_rx);
	FUNC3(&conn->id_addr_update_work, l2cap_conn_update_id_addr);

	conn->disc_reason = HCI_ERROR_REMOTE_USER_TERM;

	return conn;
}