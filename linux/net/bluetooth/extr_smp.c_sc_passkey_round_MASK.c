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
typedef  int u8 ;
struct smp_chan {int passkey_round; int /*<<< orphan*/  prnd; int /*<<< orphan*/  flags; int /*<<< orphan*/  tk; int /*<<< orphan*/  mackey; int /*<<< orphan*/  pcnf; int /*<<< orphan*/  rrnd; int /*<<< orphan*/  local_pk; int /*<<< orphan*/  remote_pk; int /*<<< orphan*/  tfm_cmac; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int passkey_notify; int /*<<< orphan*/  out; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct smp_chan*,int const) ; 
 int const SMP_CMD_DHKEY_CHECK ; 
#define  SMP_CMD_PAIRING_CONFIRM 130 
#define  SMP_CMD_PAIRING_RANDOM 129 
#define  SMP_CMD_PUBLIC_KEY 128 
 int SMP_CONFIRM_FAILED ; 
 int /*<<< orphan*/  SMP_FLAG_CFM_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_WAIT_USER ; 
 int SMP_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct smp_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_conn*,int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC10(struct smp_chan *smp, u8 smp_op)
{
	struct l2cap_conn *conn = smp->conn;
	struct hci_conn *hcon = conn->hcon;
	struct hci_dev *hdev = hcon->hdev;
	u8 cfm[16], r;

	/* Ignore the PDU if we've already done 20 rounds (0 - 19) */
	if (smp->passkey_round >= 20)
		return 0;

	switch (smp_op) {
	case SMP_CMD_PAIRING_RANDOM:
		r = ((hcon->passkey_notify >> smp->passkey_round) & 0x01);
		r |= 0x80;

		if (FUNC7(smp->tfm_cmac, smp->remote_pk, smp->local_pk,
			   smp->rrnd, r, cfm))
			return SMP_UNSPECIFIED;

		if (FUNC2(smp->pcnf, cfm, 16))
			return SMP_CONFIRM_FAILED;

		smp->passkey_round++;

		if (smp->passkey_round == 20) {
			/* Generate MacKey and LTK */
			if (FUNC4(smp, smp->mackey, smp->tk))
				return SMP_UNSPECIFIED;
		}

		/* The round is only complete when the initiator
		 * receives pairing random.
		 */
		if (!hcon->out) {
			FUNC8(conn, SMP_CMD_PAIRING_RANDOM,
				     sizeof(smp->prnd), smp->prnd);
			if (smp->passkey_round == 20)
				FUNC1(smp, SMP_CMD_DHKEY_CHECK);
			else
				FUNC1(smp, SMP_CMD_PAIRING_CONFIRM);
			return 0;
		}

		/* Start the next round */
		if (smp->passkey_round != 20)
			return FUNC10(smp, 0);

		/* Passkey rounds are complete - start DHKey Check */
		FUNC3(smp);
		FUNC1(smp, SMP_CMD_DHKEY_CHECK);

		break;

	case SMP_CMD_PAIRING_CONFIRM:
		if (FUNC9(SMP_FLAG_WAIT_USER, &smp->flags)) {
			FUNC6(SMP_FLAG_CFM_PENDING, &smp->flags);
			return 0;
		}

		FUNC1(smp, SMP_CMD_PAIRING_RANDOM);

		if (hcon->out) {
			FUNC8(conn, SMP_CMD_PAIRING_RANDOM,
				     sizeof(smp->prnd), smp->prnd);
			return 0;
		}

		return FUNC5(smp);

	case SMP_CMD_PUBLIC_KEY:
	default:
		/* Initiating device starts the round */
		if (!hcon->out)
			return 0;

		FUNC0("%s Starting passkey round %u", hdev->name,
		       smp->passkey_round + 1);

		FUNC1(smp, SMP_CMD_PAIRING_CONFIRM);

		return FUNC5(smp);
	}

	return 0;
}