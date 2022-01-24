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
struct smp_cmd_pairing {int dummy; } ;
struct smp_chan {int /*<<< orphan*/ * preq; int /*<<< orphan*/  flags; } ;
struct l2cap_conn {int remote_fixed_chan; struct hci_conn* hcon; } ;
struct l2cap_chan {scalar_t__ data; struct l2cap_conn* conn; } ;
struct hci_dev {struct l2cap_chan* name; } ;
struct hci_conn {scalar_t__ role; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  HCI_CONN_AES_CCM ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 int /*<<< orphan*/  HCI_CONN_NEW_LINK_KEY ; 
 int /*<<< orphan*/  HCI_FORCE_BREDR_SMP ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  HCI_SC_ENABLED ; 
 int L2CAP_FC_SMP_BREDR ; 
 int /*<<< orphan*/  FUNC1 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_REQ ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RSP ; 
 int /*<<< orphan*/  SMP_FLAG_SC ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_chan*,struct smp_cmd_pairing*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct smp_cmd_pairing*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct smp_chan* FUNC8 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*,int /*<<< orphan*/ ,int,struct smp_cmd_pairing*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct l2cap_chan *chan)
{
	struct l2cap_conn *conn = chan->conn;
	struct hci_conn *hcon = conn->hcon;
	struct hci_dev *hdev = hcon->hdev;
	struct smp_cmd_pairing req;
	struct smp_chan *smp;

	FUNC0("chan %p", chan);

	/* Only new pairings are interesting */
	if (!FUNC10(HCI_CONN_NEW_LINK_KEY, &hcon->flags))
		return;

	/* Don't bother if we're not encrypted */
	if (!FUNC10(HCI_CONN_ENCRYPT, &hcon->flags))
		return;

	/* Only master may initiate SMP over BR/EDR */
	if (hcon->role != HCI_ROLE_MASTER)
		return;

	/* Secure Connections support must be enabled */
	if (!FUNC4(hdev, HCI_SC_ENABLED))
		return;

	/* BR/EDR must use Secure Connections for SMP */
	if (!FUNC10(HCI_CONN_AES_CCM, &hcon->flags) &&
	    !FUNC4(hdev, HCI_FORCE_BREDR_SMP))
		return;

	/* If our LE support is not enabled don't do anything */
	if (!FUNC4(hdev, HCI_LE_ENABLED))
		return;

	/* Don't bother if remote LE support is not enabled */
	if (!FUNC5(hcon))
		return;

	/* Remote must support SMP fixed chan for BR/EDR */
	if (!(conn->remote_fixed_chan & L2CAP_FC_SMP_BREDR))
		return;

	/* Don't bother if SMP is already ongoing */
	if (chan->data)
		return;

	smp = FUNC8(conn);
	if (!smp) {
		FUNC2(hdev, "unable to create SMP context for BR/EDR");
		return;
	}

	FUNC7(SMP_FLAG_SC, &smp->flags);

	FUNC0("%s starting SMP over BR/EDR", hdev->name);

	/* Prepare and send the BR/EDR SMP Pairing Request */
	FUNC3(smp, &req, NULL);

	smp->preq[0] = SMP_CMD_PAIRING_REQ;
	FUNC6(&smp->preq[1], &req, sizeof(req));

	FUNC9(conn, SMP_CMD_PAIRING_REQ, sizeof(req), &req);
	FUNC1(smp, SMP_CMD_PAIRING_RSP);
}