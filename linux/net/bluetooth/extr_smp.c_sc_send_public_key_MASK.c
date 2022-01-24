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
typedef  int /*<<< orphan*/  u8 ;
struct smp_dev {scalar_t__ debug_key; int /*<<< orphan*/  local_rand; int /*<<< orphan*/  local_pk; } ;
struct smp_chan {scalar_t__ local_pk; TYPE_2__* conn; int /*<<< orphan*/  tfm_ecdh; int /*<<< orphan*/  flags; scalar_t__ lr; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;
struct TYPE_4__ {TYPE_1__* hcon; } ;
struct TYPE_3__ {struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HCI_USE_DEBUG_KEYS ; 
 int /*<<< orphan*/  SMP_CMD_PUBLIC_KEY ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  SMP_FLAG_DEBUG_KEY ; 
 int /*<<< orphan*/  SMP_FLAG_LOCAL_OOB ; 
 int /*<<< orphan*/  SMP_UNSPECIFIED ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  debug_pk ; 
 int /*<<< orphan*/  debug_sk ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC10(struct smp_chan *smp)
{
	struct hci_dev *hdev = smp->conn->hcon->hdev;

	FUNC0("");

	if (FUNC9(SMP_FLAG_LOCAL_OOB, &smp->flags)) {
		struct l2cap_chan *chan = hdev->smp_data;
		struct smp_dev *smp_dev;

		if (!chan || !chan->data)
			return SMP_UNSPECIFIED;

		smp_dev = chan->data;

		FUNC5(smp->local_pk, smp_dev->local_pk, 64);
		FUNC5(smp->lr, smp_dev->local_rand, 16);

		if (smp_dev->debug_key)
			FUNC6(SMP_FLAG_DEBUG_KEY, &smp->flags);

		goto done;
	}

	if (FUNC4(hdev, HCI_USE_DEBUG_KEYS)) {
		FUNC0("Using debug keys");
		if (FUNC7(smp->tfm_ecdh, debug_sk))
			return SMP_UNSPECIFIED;
		FUNC5(smp->local_pk, debug_pk, 64);
		FUNC6(SMP_FLAG_DEBUG_KEY, &smp->flags);
	} else {
		while (true) {
			/* Generate key pair for Secure Connections */
			if (FUNC3(smp->tfm_ecdh, smp->local_pk))
				return SMP_UNSPECIFIED;

			/* This is unlikely, but we need to check that
			 * we didn't accidentially generate a debug key.
			 */
			if (FUNC2(smp->local_pk, debug_pk, 64))
				break;
		}
	}

done:
	FUNC1("Local Public Key X: %32phN", smp->local_pk);
	FUNC1("Local Public Key Y: %32phN", smp->local_pk + 32);

	FUNC8(smp->conn, SMP_CMD_PUBLIC_KEY, 64, smp->local_pk);

	return 0;
}