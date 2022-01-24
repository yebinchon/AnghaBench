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
struct smp_dev {scalar_t__ method; struct smp_cmd_pairing_confirm* prnd; scalar_t__ remote_pk; scalar_t__ local_pk; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/  flags; scalar_t__ passkey_round; scalar_t__ dhkey; struct crypto_kpp* tfm_ecdh; scalar_t__ pcnf; struct smp_cmd_pairing_confirm* rr; } ;
struct smp_cmd_public_key {int dummy; } ;
struct smp_cmd_pairing_confirm {int /*<<< orphan*/  confirm_val; } ;
struct smp_chan {scalar_t__ method; struct smp_cmd_pairing_confirm* prnd; scalar_t__ remote_pk; scalar_t__ local_pk; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/  flags; scalar_t__ passkey_round; scalar_t__ dhkey; struct crypto_kpp* tfm_ecdh; scalar_t__ pcnf; struct smp_cmd_pairing_confirm* rr; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {int /*<<< orphan*/  name; struct l2cap_chan* smp_data; } ;
struct hci_conn {int passkey_notify; scalar_t__ out; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; scalar_t__ passkey_entered; int /*<<< orphan*/  pending_sec_level; struct hci_dev* hdev; } ;
struct crypto_kpp {int dummy; } ;
typedef  int /*<<< orphan*/  cfm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,...) ; 
 int /*<<< orphan*/  BT_SECURITY_FIPS ; 
 int /*<<< orphan*/  BT_SECURITY_MEDIUM ; 
 scalar_t__ DSP_PASSKEY ; 
 scalar_t__ JUST_CFM ; 
 scalar_t__ JUST_WORKS ; 
 scalar_t__ REQ_OOB ; 
 scalar_t__ REQ_PASSKEY ; 
 int /*<<< orphan*/  FUNC1 (struct smp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_CONFIRM ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RANDOM ; 
 int /*<<< orphan*/  SMP_CMD_PUBLIC_KEY ; 
 int SMP_CONFIRM_FAILED ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  SMP_FLAG_DEBUG_KEY ; 
 int /*<<< orphan*/  SMP_FLAG_LOCAL_OOB ; 
 int /*<<< orphan*/  SMP_FLAG_REMOTE_OOB ; 
 int /*<<< orphan*/  SMP_FLAG_REMOTE_PK ; 
 int /*<<< orphan*/  SMP_FLAG_WAIT_USER ; 
 int SMP_INVALID_PARAMS ; 
 int SMP_UNSPECIFIED ; 
 scalar_t__ FUNC3 (struct crypto_kpp*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  debug_pk ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct smp_cmd_public_key*,int) ; 
 scalar_t__ FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC8 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct smp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct smp_dev*) ; 
 int FUNC11 (struct smp_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct smp_cmd_pairing_confirm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_conn*,int /*<<< orphan*/ ,int,struct smp_cmd_pairing_confirm*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_public_key *key = (void *) skb->data;
	struct hci_conn *hcon = conn->hcon;
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;
	struct hci_dev *hdev = hcon->hdev;
	struct crypto_kpp *tfm_ecdh;
	struct smp_cmd_pairing_confirm cfm;
	int err;

	FUNC0("conn %p", conn);

	if (skb->len < sizeof(*key))
		return SMP_INVALID_PARAMS;

	FUNC6(smp->remote_pk, key, 64);

	if (FUNC15(SMP_FLAG_REMOTE_OOB, &smp->flags)) {
		err = FUNC13(smp->tfm_cmac, smp->remote_pk, smp->remote_pk,
			     smp->rr, 0, cfm.confirm_val);
		if (err)
			return SMP_UNSPECIFIED;

		if (FUNC4(cfm.confirm_val, smp->pcnf, 16))
			return SMP_CONFIRM_FAILED;
	}

	/* Non-initiating device sends its public key after receiving
	 * the key from the initiating device.
	 */
	if (!hcon->out) {
		err = FUNC11(smp);
		if (err)
			return err;
	}

	FUNC2("Remote Public Key X: %32phN", smp->remote_pk);
	FUNC2("Remote Public Key Y: %32phN", smp->remote_pk + 32);

	/* Compute the shared secret on the same crypto tfm on which the private
	 * key was set/generated.
	 */
	if (FUNC15(SMP_FLAG_LOCAL_OOB, &smp->flags)) {
		struct l2cap_chan *hchan = hdev->smp_data;
		struct smp_dev *smp_dev;

		if (!hchan || !hchan->data)
			return SMP_UNSPECIFIED;

		smp_dev = hchan->data;

		tfm_ecdh = smp_dev->tfm_ecdh;
	} else {
		tfm_ecdh = smp->tfm_ecdh;
	}

	if (FUNC3(tfm_ecdh, smp->remote_pk, smp->dhkey))
		return SMP_UNSPECIFIED;

	FUNC2("DHKey %32phN", smp->dhkey);

	FUNC12(SMP_FLAG_REMOTE_PK, &smp->flags);

	smp->method = FUNC10(smp);

	FUNC0("%s selected method 0x%02x", hdev->name, smp->method);

	/* JUST_WORKS and JUST_CFM result in an unauthenticated key */
	if (smp->method == JUST_WORKS || smp->method == JUST_CFM)
		hcon->pending_sec_level = BT_SECURITY_MEDIUM;
	else
		hcon->pending_sec_level = BT_SECURITY_FIPS;

	if (!FUNC4(debug_pk, smp->remote_pk, 64))
		FUNC12(SMP_FLAG_DEBUG_KEY, &smp->flags);

	if (smp->method == DSP_PASSKEY) {
		FUNC5(&hcon->passkey_notify,
				 sizeof(hcon->passkey_notify));
		hcon->passkey_notify %= 1000000;
		hcon->passkey_entered = 0;
		smp->passkey_round = 0;
		if (FUNC7(hdev, &hcon->dst, hcon->type,
					     hcon->dst_type,
					     hcon->passkey_notify,
					     hcon->passkey_entered))
			return SMP_UNSPECIFIED;
		FUNC1(smp, SMP_CMD_PAIRING_CONFIRM);
		return FUNC9(smp, SMP_CMD_PUBLIC_KEY);
	}

	if (smp->method == REQ_OOB) {
		if (hcon->out)
			FUNC14(conn, SMP_CMD_PAIRING_RANDOM,
				     sizeof(smp->prnd), smp->prnd);

		FUNC1(smp, SMP_CMD_PAIRING_RANDOM);

		return 0;
	}

	if (hcon->out)
		FUNC1(smp, SMP_CMD_PAIRING_CONFIRM);

	if (smp->method == REQ_PASSKEY) {
		if (FUNC8(hdev, &hcon->dst, hcon->type,
					      hcon->dst_type))
			return SMP_UNSPECIFIED;
		FUNC1(smp, SMP_CMD_PAIRING_CONFIRM);
		FUNC12(SMP_FLAG_WAIT_USER, &smp->flags);
		return 0;
	}

	/* The Initiating device waits for the non-initiating device to
	 * send the confirm value.
	 */
	if (conn->hcon->out)
		return 0;

	err = FUNC13(smp->tfm_cmac, smp->local_pk, smp->remote_pk, smp->prnd,
		     0, cfm.confirm_val);
	if (err)
		return SMP_UNSPECIFIED;

	FUNC14(conn, SMP_CMD_PAIRING_CONFIRM, sizeof(cfm), &cfm);
	FUNC1(smp, SMP_CMD_PAIRING_RANDOM);

	return 0;
}