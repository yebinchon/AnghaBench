#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct smp_chan {int /*<<< orphan*/  tk; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/  flags; TYPE_1__* conn; } ;
struct link_key {scalar_t__ type; int /*<<< orphan*/  val; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  dst; struct hci_dev* hdev; } ;
struct TYPE_2__ {struct hci_conn* hcon; } ;

/* Variables and functions */
 scalar_t__ HCI_LK_DEBUG_COMBINATION ; 
 int /*<<< orphan*/  SMP_FLAG_CT2 ; 
 int /*<<< orphan*/  SMP_FLAG_DEBUG_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*) ; 
 struct link_key* FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct smp_chan *smp)
{
	/* From core spec. Spells out in ASCII as 'brle'. */
	const u8 brle[4] = { 0x65, 0x6c, 0x72, 0x62 };
	struct hci_conn *hcon = smp->conn->hcon;
	struct hci_dev *hdev = hcon->hdev;
	struct link_key *key;

	key = FUNC1(hdev, &hcon->dst);
	if (!key) {
		FUNC0(hdev, "no Link Key found to generate LTK");
		return;
	}

	if (key->type == HCI_LK_DEBUG_COMBINATION)
		FUNC3(SMP_FLAG_DEBUG_KEY, &smp->flags);

	if (FUNC6(SMP_FLAG_CT2, &smp->flags)) {
		/* SALT = 0x00000000000000000000000000000000746D7032 */
		const u8 salt[16] = { 0x32, 0x70, 0x6d, 0x74 };

		if (FUNC5(smp->tfm_cmac, key->val, salt, smp->tk))
			return;
	} else {
		/* From core spec. Spells out in ASCII as 'tmp2'. */
		const u8 tmp2[4] = { 0x32, 0x70, 0x6d, 0x74 };

		if (FUNC4(smp->tfm_cmac, key->val, tmp2, smp->tk))
			return;
	}

	if (FUNC4(smp->tfm_cmac, smp->tk, brle, smp->tk))
		return;

	FUNC2(smp);
}