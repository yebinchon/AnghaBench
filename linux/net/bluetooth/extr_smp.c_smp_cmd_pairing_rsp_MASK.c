#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct smp_cmd_pairing {scalar_t__ auth_req; scalar_t__ oob_flag; int /*<<< orphan*/  io_capability; int /*<<< orphan*/  resp_key_dist; int /*<<< orphan*/  max_key_size; } ;
struct smp_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/  remote_key_dist; int /*<<< orphan*/  prnd; int /*<<< orphan*/ * prsp; int /*<<< orphan*/ * preq; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {TYPE_1__* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ local_oob; } ;
struct TYPE_3__ {scalar_t__ role; scalar_t__ type; scalar_t__ pending_sec_level; struct hci_dev* hdev; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 scalar_t__ FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct l2cap_conn*) ; 
 scalar_t__ BT_SECURITY_HIGH ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 scalar_t__ JUST_CFM ; 
 scalar_t__ JUST_WORKS ; 
 int /*<<< orphan*/  FUNC2 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ SMP_AUTH_CT2 ; 
 scalar_t__ SMP_AUTH_REQUIREMENTS ; 
 scalar_t__ SMP_AUTH_SC ; 
 scalar_t__ SMP_CMD_NOTSUPP ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RSP ; 
 int /*<<< orphan*/  SMP_CMD_PUBLIC_KEY ; 
 TYPE_2__* FUNC3 (struct hci_dev*) ; 
 scalar_t__ SMP_ENC_KEY_SIZE ; 
 int /*<<< orphan*/  SMP_FLAG_CFM_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_CT2 ; 
 int /*<<< orphan*/  SMP_FLAG_LOCAL_OOB ; 
 int /*<<< orphan*/  SMP_FLAG_SC ; 
 int /*<<< orphan*/  SMP_FLAG_TK_VALID ; 
 scalar_t__ SMP_INVALID_PARAMS ; 
 scalar_t__ SMP_OOB_PRESENT ; 
 int /*<<< orphan*/  SMP_SC_NO_DIST ; 
 scalar_t__ SMP_UNSPECIFIED ; 
 scalar_t__ FUNC4 (struct l2cap_conn*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct smp_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct smp_cmd_pairing*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC14 (struct smp_chan*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct l2cap_conn*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC17(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_pairing *req, *rsp = (void *) skb->data;
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;
	struct hci_dev *hdev = conn->hcon->hdev;
	u8 key_size, auth;
	int ret;

	FUNC1("conn %p", conn);

	if (skb->len < sizeof(*rsp))
		return SMP_INVALID_PARAMS;

	if (conn->hcon->role != HCI_ROLE_MASTER)
		return SMP_CMD_NOTSUPP;

	FUNC12(skb, sizeof(*rsp));

	req = (void *) &smp->preq[1];

	key_size = FUNC9(req->max_key_size, rsp->max_key_size);
	if (FUNC4(conn, key_size))
		return SMP_ENC_KEY_SIZE;

	auth = rsp->auth_req & FUNC0(hdev);

	if (FUNC7(hdev, HCI_SC_ONLY) && !(auth & SMP_AUTH_SC))
		return SMP_AUTH_REQUIREMENTS;

	/* If the remote side's OOB flag is set it means it has
	 * successfully received our local OOB data - therefore set the
	 * flag to indicate that local OOB is in use.
	 */
	if (rsp->oob_flag == SMP_OOB_PRESENT && FUNC3(hdev)->local_oob)
		FUNC11(SMP_FLAG_LOCAL_OOB, &smp->flags);

	smp->prsp[0] = SMP_CMD_PAIRING_RSP;
	FUNC8(&smp->prsp[1], rsp, sizeof(*rsp));

	/* Update remote key distribution in case the remote cleared
	 * some bits that we had enabled in our request.
	 */
	smp->remote_key_dist &= rsp->resp_key_dist;

	if ((req->auth_req & SMP_AUTH_CT2) && (auth & SMP_AUTH_CT2))
		FUNC11(SMP_FLAG_CT2, &smp->flags);

	/* For BR/EDR this means we're done and can start phase 3 */
	if (conn->hcon->type == ACL_LINK) {
		/* Clear bits which are generated but not distributed */
		smp->remote_key_dist &= ~SMP_SC_NO_DIST;
		FUNC14(smp);
		return 0;
	}

	if ((req->auth_req & SMP_AUTH_SC) && (auth & SMP_AUTH_SC))
		FUNC11(SMP_FLAG_SC, &smp->flags);
	else if (conn->hcon->pending_sec_level > BT_SECURITY_HIGH)
		conn->hcon->pending_sec_level = BT_SECURITY_HIGH;

	/* If we need MITM check that it can be achieved */
	if (conn->hcon->pending_sec_level >= BT_SECURITY_HIGH) {
		u8 method;

		method = FUNC5(smp, req->io_capability,
					 rsp->io_capability);
		if (method == JUST_WORKS || method == JUST_CFM)
			return SMP_AUTH_REQUIREMENTS;
	}

	FUNC6(smp->prnd, sizeof(smp->prnd));

	/* Update remote key distribution in case the remote cleared
	 * some bits that we had enabled in our request.
	 */
	smp->remote_key_dist &= rsp->resp_key_dist;

	if (FUNC15(SMP_FLAG_SC, &smp->flags)) {
		/* Clear bits which are generated but not distributed */
		smp->remote_key_dist &= ~SMP_SC_NO_DIST;
		FUNC2(smp, SMP_CMD_PUBLIC_KEY);
		return FUNC10(smp);
	}

	auth |= req->auth_req;

	ret = FUNC16(conn, 0, auth, req->io_capability, rsp->io_capability);
	if (ret)
		return SMP_UNSPECIFIED;

	FUNC11(SMP_FLAG_CFM_PENDING, &smp->flags);

	/* Can't compose response until we have been confirmed */
	if (FUNC15(SMP_FLAG_TK_VALID, &smp->flags))
		return FUNC13(smp);

	return 0;
}