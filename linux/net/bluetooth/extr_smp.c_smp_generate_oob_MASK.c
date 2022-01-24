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
struct smp_dev {int debug_key; int local_oob; int /*<<< orphan*/  local_rand; int /*<<< orphan*/ * local_pk; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/  tfm_ecdh; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCI_USE_DEBUG_KEYS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  debug_pk ; 
 int /*<<< orphan*/  debug_sk ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct hci_dev *hdev, u8 hash[16], u8 rand[16])
{
	struct l2cap_chan *chan = hdev->smp_data;
	struct smp_dev *smp;
	int err;

	if (!chan || !chan->data)
		return -EOPNOTSUPP;

	smp = chan->data;

	if (FUNC5(hdev, HCI_USE_DEBUG_KEYS)) {
		FUNC0("Using debug keys");
		err = FUNC7(smp->tfm_ecdh, debug_sk);
		if (err)
			return err;
		FUNC6(smp->local_pk, debug_pk, 64);
		smp->debug_key = true;
	} else {
		while (true) {
			/* Generate key pair for Secure Connections */
			err = FUNC3(smp->tfm_ecdh, smp->local_pk);
			if (err)
				return err;

			/* This is unlikely, but we need to check that
			 * we didn't accidentially generate a debug key.
			 */
			if (FUNC2(smp->local_pk, debug_pk, 64))
				break;
		}
		smp->debug_key = false;
	}

	FUNC1("OOB Public Key X: %32phN", smp->local_pk);
	FUNC1("OOB Public Key Y: %32phN", smp->local_pk + 32);

	FUNC4(smp->local_rand, 16);

	err = FUNC8(smp->tfm_cmac, smp->local_pk, smp->local_pk,
		     smp->local_rand, 0, hash);
	if (err < 0)
		return err;

	FUNC6(rand, smp->local_rand, 16);

	smp->local_oob = true;

	return 0;
}