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
struct smp_chan {int /*<<< orphan*/  security_timer; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_chan {struct l2cap_conn* conn; struct smp_chan* data; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan)
{
	struct smp_chan *smp = chan->data;
	struct l2cap_conn *conn = chan->conn;
	struct hci_conn *hcon = conn->hcon;

	FUNC0("chan %p", chan);

	if (hcon->type == ACL_LINK) {
		FUNC1(chan);
		return;
	}

	if (!smp)
		return;

	if (!FUNC4(HCI_CONN_ENCRYPT, &hcon->flags))
		return;

	FUNC2(&smp->security_timer);

	FUNC3(smp);
}