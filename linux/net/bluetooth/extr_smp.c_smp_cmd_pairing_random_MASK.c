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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct smp_chan {scalar_t__ method; int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/  tk; int /*<<< orphan*/  mackey; int /*<<< orphan*/ * prnd; int /*<<< orphan*/  pcnf; int /*<<< orphan*/ * rrnd; int /*<<< orphan*/ * local_pk; int /*<<< orphan*/ * remote_pk; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; int /*<<< orphan*/  hdev; scalar_t__ out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 scalar_t__ DSP_PASSKEY ; 
 scalar_t__ JUST_WORKS ; 
 scalar_t__ REQ_OOB ; 
 scalar_t__ REQ_PASSKEY ; 
 int /*<<< orphan*/  FUNC1 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_DHKEY_CHECK ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RANDOM ; 
 int /*<<< orphan*/  SMP_CONFIRM_FAILED ; 
 int /*<<< orphan*/  SMP_FLAG_SC ; 
 int /*<<< orphan*/  SMP_FLAG_WAIT_USER ; 
 int /*<<< orphan*/  SMP_INVALID_PARAMS ; 
 int /*<<< orphan*/  SMP_UNSPECIFIED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smp_chan*) ; 
 int FUNC6 (struct smp_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_conn*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC15(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;
	struct hci_conn *hcon = conn->hcon;
	u8 *pkax, *pkbx, *na, *nb;
	u32 passkey;
	int err;

	FUNC0("conn %p", conn);

	if (skb->len < sizeof(smp->rrnd))
		return SMP_INVALID_PARAMS;

	FUNC3(smp->rrnd, skb->data, sizeof(smp->rrnd));
	FUNC9(skb, sizeof(smp->rrnd));

	if (!FUNC14(SMP_FLAG_SC, &smp->flags))
		return FUNC12(smp);

	if (hcon->out) {
		pkax = smp->local_pk;
		pkbx = smp->remote_pk;
		na   = smp->prnd;
		nb   = smp->rrnd;
	} else {
		pkax = smp->remote_pk;
		pkbx = smp->local_pk;
		na   = smp->rrnd;
		nb   = smp->prnd;
	}

	if (smp->method == REQ_OOB) {
		if (!hcon->out)
			FUNC13(conn, SMP_CMD_PAIRING_RANDOM,
				     sizeof(smp->prnd), smp->prnd);
		FUNC1(smp, SMP_CMD_DHKEY_CHECK);
		goto mackey_and_ltk;
	}

	/* Passkey entry has special treatment */
	if (smp->method == REQ_PASSKEY || smp->method == DSP_PASSKEY)
		return FUNC7(smp, SMP_CMD_PAIRING_RANDOM);

	if (hcon->out) {
		u8 cfm[16];

		err = FUNC10(smp->tfm_cmac, smp->remote_pk, smp->local_pk,
			     smp->rrnd, 0, cfm);
		if (err)
			return SMP_UNSPECIFIED;

		if (FUNC2(smp->pcnf, cfm, 16))
			return SMP_CONFIRM_FAILED;
	} else {
		FUNC13(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd),
			     smp->prnd);
		FUNC1(smp, SMP_CMD_DHKEY_CHECK);
	}

mackey_and_ltk:
	/* Generate MacKey and LTK */
	err = FUNC6(smp, smp->mackey, smp->tk);
	if (err)
		return SMP_UNSPECIFIED;

	if (smp->method == JUST_WORKS || smp->method == REQ_OOB) {
		if (hcon->out) {
			FUNC5(smp);
			FUNC1(smp, SMP_CMD_DHKEY_CHECK);
		}
		return 0;
	}

	err = FUNC11(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
	if (err)
		return SMP_UNSPECIFIED;

	err = FUNC4(hcon->hdev, &hcon->dst, hcon->type,
					hcon->dst_type, passkey, 0);
	if (err)
		return SMP_UNSPECIFIED;

	FUNC8(SMP_FLAG_WAIT_USER, &smp->flags);

	return 0;
}