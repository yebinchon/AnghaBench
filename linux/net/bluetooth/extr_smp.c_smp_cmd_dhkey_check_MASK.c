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
struct smp_cmd_dhkey_check {int /*<<< orphan*/  e; } ;
struct smp_chan {scalar_t__ method; int /*<<< orphan*/  enc_key_size; int /*<<< orphan*/  tk; int /*<<< orphan*/  flags; int /*<<< orphan*/  prnd; int /*<<< orphan*/  rrnd; int /*<<< orphan*/  mackey; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/ * lr; int /*<<< orphan*/ * preq; int /*<<< orphan*/ * prsp; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {int /*<<< orphan*/  enc_key_size; scalar_t__ out; int /*<<< orphan*/  passkey_notify; int /*<<< orphan*/  resp_addr_type; int /*<<< orphan*/  init_addr_type; int /*<<< orphan*/  resp_addr; int /*<<< orphan*/  init_addr; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 scalar_t__ DSP_PASSKEY ; 
 scalar_t__ REQ_OOB ; 
 scalar_t__ REQ_PASSKEY ; 
 int SMP_DHKEY_CHECK_FAILED ; 
 int /*<<< orphan*/  SMP_FLAG_DHKEY_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_WAIT_USER ; 
 int SMP_INVALID_PARAMS ; 
 int SMP_UNSPECIFIED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_dhkey_check *check = (void *) skb->data;
	struct l2cap_chan *chan = conn->smp;
	struct hci_conn *hcon = conn->hcon;
	struct smp_chan *smp = chan->data;
	u8 a[7], b[7], *local_addr, *remote_addr;
	u8 io_cap[3], r[16], e[16];
	int err;

	FUNC0("conn %p", conn);

	if (skb->len < sizeof(*check))
		return SMP_INVALID_PARAMS;

	FUNC3(a, &hcon->init_addr, 6);
	FUNC3(b, &hcon->resp_addr, 6);
	a[6] = hcon->init_addr_type;
	b[6] = hcon->resp_addr_type;

	if (hcon->out) {
		local_addr = a;
		remote_addr = b;
		FUNC3(io_cap, &smp->prsp[1], 3);
	} else {
		local_addr = b;
		remote_addr = a;
		FUNC3(io_cap, &smp->preq[1], 3);
	}

	FUNC4(r, 0, sizeof(r));

	if (smp->method == REQ_PASSKEY || smp->method == DSP_PASSKEY)
		FUNC5(hcon->passkey_notify, r);
	else if (smp->method == REQ_OOB)
		FUNC3(r, smp->lr, 16);

	err = FUNC9(smp->tfm_cmac, smp->mackey, smp->rrnd, smp->prnd, r,
		     io_cap, remote_addr, local_addr, e);
	if (err)
		return SMP_UNSPECIFIED;

	if (FUNC1(check->e, e, 16))
		return SMP_DHKEY_CHECK_FAILED;

	if (!hcon->out) {
		if (FUNC10(SMP_FLAG_WAIT_USER, &smp->flags)) {
			FUNC8(SMP_FLAG_DHKEY_PENDING, &smp->flags);
			return 0;
		}

		/* Slave sends DHKey check as response to master */
		FUNC7(smp);
	}

	FUNC6(smp);

	if (hcon->out) {
		FUNC2(hcon, 0, 0, smp->tk, smp->enc_key_size);
		hcon->enc_key_size = smp->enc_key_size;
	}

	return 0;
}