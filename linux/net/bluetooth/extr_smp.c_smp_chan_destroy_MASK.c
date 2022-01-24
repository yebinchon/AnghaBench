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
struct smp_chan {TYPE_1__* remote_irk; TYPE_1__* slave_ltk; TYPE_1__* ltk; int /*<<< orphan*/  tfm_ecdh; int /*<<< orphan*/  tfm_cmac; struct smp_chan* link_key; struct smp_chan* slave_csrk; struct smp_chan* csrk; int /*<<< orphan*/  flags; int /*<<< orphan*/  security_timer; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {int /*<<< orphan*/  hdev; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HCI_KEEP_DEBUG_KEYS ; 
 int /*<<< orphan*/  SMP_FLAG_COMPLETE ; 
 scalar_t__ SMP_LTK_P256_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*,int) ; 
 int /*<<< orphan*/  rcu ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct l2cap_conn *conn)
{
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;
	struct hci_conn *hcon = conn->hcon;
	bool complete;

	FUNC0(!smp);

	FUNC1(&smp->security_timer);

	complete = FUNC10(SMP_FLAG_COMPLETE, &smp->flags);
	FUNC9(hcon, complete);

	FUNC7(smp->csrk);
	FUNC7(smp->slave_csrk);
	FUNC7(smp->link_key);

	FUNC3(smp->tfm_cmac);
	FUNC2(smp->tfm_ecdh);

	/* Ensure that we don't leave any debug key around if debug key
	 * support hasn't been explicitly enabled.
	 */
	if (smp->ltk && smp->ltk->type == SMP_LTK_P256_DEBUG &&
	    !FUNC5(hcon->hdev, HCI_KEEP_DEBUG_KEYS)) {
		FUNC8(&smp->ltk->list);
		FUNC6(smp->ltk, rcu);
		smp->ltk = NULL;
	}

	/* If pairing failed clean up any keys we might have */
	if (!complete) {
		if (smp->ltk) {
			FUNC8(&smp->ltk->list);
			FUNC6(smp->ltk, rcu);
		}

		if (smp->slave_ltk) {
			FUNC8(&smp->slave_ltk->list);
			FUNC6(smp->slave_ltk, rcu);
		}

		if (smp->remote_irk) {
			FUNC8(&smp->remote_irk->list);
			FUNC6(smp->remote_irk, rcu);
		}
	}

	chan->data = NULL;
	FUNC7(smp);
	FUNC4(hcon);
}