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
struct smp_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/ * remote_irk; int /*<<< orphan*/ * slave_ltk; int /*<<< orphan*/ * ltk; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SMP_FLAG_COMPLETE ; 
 int /*<<< orphan*/  SMP_UNSPECIFIED ; 
 struct hci_conn* FUNC0 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct hci_dev *hdev, bdaddr_t *bdaddr,
				  u8 addr_type)
{
	struct hci_conn *hcon;
	struct l2cap_conn *conn;
	struct l2cap_chan *chan;
	struct smp_chan *smp;
	int err;

	err = FUNC2(hdev, bdaddr, addr_type);
	FUNC1(hdev, bdaddr, addr_type);

	hcon = FUNC0(hdev, bdaddr, addr_type);
	if (!hcon)
		goto done;

	conn = hcon->l2cap_data;
	if (!conn)
		goto done;

	chan = conn->smp;
	if (!chan)
		goto done;

	FUNC3(chan);

	smp = chan->data;
	if (smp) {
		/* Set keys to NULL to make sure smp_failure() does not try to
		 * remove and free already invalidated rcu list entries. */
		smp->ltk = NULL;
		smp->slave_ltk = NULL;
		smp->remote_irk = NULL;

		if (FUNC6(SMP_FLAG_COMPLETE, &smp->flags))
			FUNC5(conn, 0);
		else
			FUNC5(conn, SMP_UNSPECIFIED);
		err = 0;
	}

	FUNC4(chan);

done:
	return err;
}