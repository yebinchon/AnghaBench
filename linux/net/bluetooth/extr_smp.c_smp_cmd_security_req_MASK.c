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
typedef  scalar_t__ u8 ;
struct smp_cmd_security_req {scalar_t__ auth_req; } ;
struct smp_cmd_pairing {int dummy; } ;
struct smp_chan {int /*<<< orphan*/ * preq; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ role; scalar_t__ io_capability; scalar_t__ sec_level; scalar_t__ pending_sec_level; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct l2cap_conn*) ; 
 scalar_t__ BT_SECURITY_MEDIUM ; 
 int /*<<< orphan*/  HCI_BONDABLE ; 
 scalar_t__ HCI_IO_NO_INPUT_OUTPUT ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 int /*<<< orphan*/  FUNC2 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ SMP_AUTH_BONDING ; 
 scalar_t__ SMP_AUTH_REQUIREMENTS ; 
 scalar_t__ SMP_AUTH_SC ; 
 scalar_t__ SMP_CMD_NOTSUPP ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_REQ ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RSP ; 
 scalar_t__ SMP_INVALID_PARAMS ; 
 scalar_t__ SMP_PAIRING_NOTSUPP ; 
 scalar_t__ SMP_UNSPECIFIED ; 
 int /*<<< orphan*/  SMP_USE_LTK ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,struct smp_cmd_pairing*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct smp_cmd_pairing*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct smp_cmd_pairing*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 struct smp_chan* FUNC9 (struct l2cap_conn*) ; 
 scalar_t__ FUNC10 (struct l2cap_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_conn*,int /*<<< orphan*/ ,int,struct smp_cmd_pairing*) ; 
 scalar_t__ FUNC12 (struct hci_conn*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC13(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_security_req *rp = (void *) skb->data;
	struct smp_cmd_pairing cp;
	struct hci_conn *hcon = conn->hcon;
	struct hci_dev *hdev = hcon->hdev;
	struct smp_chan *smp;
	u8 sec_level, auth;

	FUNC1("conn %p", conn);

	if (skb->len < sizeof(*rp))
		return SMP_INVALID_PARAMS;

	if (hcon->role != HCI_ROLE_MASTER)
		return SMP_CMD_NOTSUPP;

	auth = rp->auth_req & FUNC0(hdev);

	if (FUNC5(hdev, HCI_SC_ONLY) && !(auth & SMP_AUTH_SC))
		return SMP_AUTH_REQUIREMENTS;

	if (hcon->io_capability == HCI_IO_NO_INPUT_OUTPUT)
		sec_level = BT_SECURITY_MEDIUM;
	else
		sec_level = FUNC3(auth);

	if (FUNC12(hcon, sec_level, SMP_USE_LTK)) {
		/* If link is already encrypted with sufficient security we
		 * still need refresh encryption as per Core Spec 5.0 Vol 3,
		 * Part H 2.4.6
		 */
		FUNC10(conn, hcon->sec_level);
		return 0;
	}

	if (sec_level > hcon->pending_sec_level)
		hcon->pending_sec_level = sec_level;

	if (FUNC10(conn, hcon->pending_sec_level))
		return 0;

	smp = FUNC9(conn);
	if (!smp)
		return SMP_UNSPECIFIED;

	if (!FUNC5(hdev, HCI_BONDABLE) &&
	    (auth & SMP_AUTH_BONDING))
		return SMP_PAIRING_NOTSUPP;

	FUNC8(skb, sizeof(*rp));

	FUNC7(&cp, 0, sizeof(cp));
	FUNC4(conn, &cp, NULL, auth);

	smp->preq[0] = SMP_CMD_PAIRING_REQ;
	FUNC6(&smp->preq[1], &cp, sizeof(cp));

	FUNC11(conn, SMP_CMD_PAIRING_REQ, sizeof(cp), &cp);
	FUNC2(smp, SMP_CMD_PAIRING_RSP);

	return 0;
}