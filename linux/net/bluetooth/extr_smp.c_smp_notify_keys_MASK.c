#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct smp_cmd_pairing {int auth_req; } ;
struct smp_chan {scalar_t__ link_key; TYPE_1__* conn; int /*<<< orphan*/  flags; TYPE_2__* slave_ltk; TYPE_2__* ltk; TYPE_4__* slave_csrk; TYPE_4__* csrk; TYPE_3__* remote_irk; int /*<<< orphan*/ * prsp; int /*<<< orphan*/ * preq; } ;
struct link_key {scalar_t__ type; int /*<<< orphan*/  list; } ;
struct l2cap_conn {int /*<<< orphan*/  id_addr_update_work; struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {int /*<<< orphan*/  workqueue; } ;
struct hci_conn {scalar_t__ type; scalar_t__ key_type; scalar_t__ sec_level; int /*<<< orphan*/  dst; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  bdaddr_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  bdaddr_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  hcon; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 scalar_t__ BT_SECURITY_FIPS ; 
 int /*<<< orphan*/  HCI_CONN_FLUSH_KEY ; 
 int /*<<< orphan*/  HCI_KEEP_DEBUG_KEYS ; 
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ; 
 scalar_t__ HCI_LK_DEBUG_COMBINATION ; 
 scalar_t__ HCI_LK_UNAUTH_COMBINATION_P256 ; 
 scalar_t__ LE_LINK ; 
 int SMP_AUTH_BONDING ; 
 int /*<<< orphan*/  SMP_FLAG_DEBUG_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct link_key* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct link_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct link_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct l2cap_conn *conn)
{
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;
	struct hci_conn *hcon = conn->hcon;
	struct hci_dev *hdev = hcon->hdev;
	struct smp_cmd_pairing *req = (void *) &smp->preq[1];
	struct smp_cmd_pairing *rsp = (void *) &smp->prsp[1];
	bool persistent;

	if (hcon->type == ACL_LINK) {
		if (hcon->key_type == HCI_LK_DEBUG_COMBINATION)
			persistent = false;
		else
			persistent = !FUNC10(HCI_CONN_FLUSH_KEY,
					       &hcon->flags);
	} else {
		/* The LTKs, IRKs and CSRKs should be persistent only if
		 * both sides had the bonding bit set in their
		 * authentication requests.
		 */
		persistent = !!((req->auth_req & rsp->auth_req) &
				SMP_AUTH_BONDING);
	}

	if (smp->remote_irk) {
		FUNC6(hdev, smp->remote_irk, persistent);

		/* Now that user space can be considered to know the
		 * identity address track the connection based on it
		 * from now on (assuming this is an LE link).
		 */
		if (hcon->type == LE_LINK) {
			FUNC0(&hcon->dst, &smp->remote_irk->bdaddr);
			hcon->dst_type = smp->remote_irk->addr_type;
			FUNC9(hdev->workqueue, &conn->id_addr_update_work);
		}
	}

	if (smp->csrk) {
		smp->csrk->bdaddr_type = hcon->dst_type;
		FUNC0(&smp->csrk->bdaddr, &hcon->dst);
		FUNC5(hdev, smp->csrk, persistent);
	}

	if (smp->slave_csrk) {
		smp->slave_csrk->bdaddr_type = hcon->dst_type;
		FUNC0(&smp->slave_csrk->bdaddr, &hcon->dst);
		FUNC5(hdev, smp->slave_csrk, persistent);
	}

	if (smp->ltk) {
		smp->ltk->bdaddr_type = hcon->dst_type;
		FUNC0(&smp->ltk->bdaddr, &hcon->dst);
		FUNC8(hdev, smp->ltk, persistent);
	}

	if (smp->slave_ltk) {
		smp->slave_ltk->bdaddr_type = hcon->dst_type;
		FUNC0(&smp->slave_ltk->bdaddr, &hcon->dst);
		FUNC8(hdev, smp->slave_ltk, persistent);
	}

	if (smp->link_key) {
		struct link_key *key;
		u8 type;

		if (FUNC10(SMP_FLAG_DEBUG_KEY, &smp->flags))
			type = HCI_LK_DEBUG_COMBINATION;
		else if (hcon->sec_level == BT_SECURITY_FIPS)
			type = HCI_LK_AUTH_COMBINATION_P256;
		else
			type = HCI_LK_UNAUTH_COMBINATION_P256;

		key = FUNC1(hdev, smp->conn->hcon, &hcon->dst,
				       smp->link_key, type, 0, &persistent);
		if (key) {
			FUNC7(hdev, key, persistent);

			/* Don't keep debug keys around if the relevant
			 * flag is not set.
			 */
			if (!FUNC2(hdev, HCI_KEEP_DEBUG_KEYS) &&
			    key->type == HCI_LK_DEBUG_COMBINATION) {
				FUNC4(&key->list);
				FUNC3(key, rcu);
			}
		}
	}
}