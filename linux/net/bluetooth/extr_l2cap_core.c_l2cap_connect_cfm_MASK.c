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
typedef  scalar_t__ u8 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {scalar_t__ dst_type; int /*<<< orphan*/  src_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__* ops; int /*<<< orphan*/  scid; } ;
struct hci_dev {int /*<<< orphan*/  blacklist; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; struct hci_dev* hdev; } ;
struct TYPE_2__ {struct l2cap_chan* (* new_connection ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,struct l2cap_chan*) ; 
 scalar_t__ FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*) ; 
 struct l2cap_conn* FUNC11 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_conn*) ; 
 struct l2cap_chan* FUNC14 (struct l2cap_chan*,struct hci_conn*) ; 
 struct l2cap_chan* FUNC15 (struct l2cap_chan*) ; 

__attribute__((used)) static void FUNC16(struct hci_conn *hcon, u8 status)
{
	struct hci_dev *hdev = hcon->hdev;
	struct l2cap_conn *conn;
	struct l2cap_chan *pchan;
	u8 dst_type;

	if (hcon->type != ACL_LINK && hcon->type != LE_LINK)
		return;

	FUNC0("hcon %p bdaddr %pMR status %d", hcon, &hcon->dst, status);

	if (status) {
		FUNC12(hcon, FUNC6(status));
		return;
	}

	conn = FUNC11(hcon);
	if (!conn)
		return;

	dst_type = FUNC4(hcon);

	/* If device is blocked, do not create channels for it */
	if (FUNC7(&hdev->blacklist, &hcon->dst, dst_type))
		return;

	/* Find fixed channels and notify them of the new connection. We
	 * use multiple individual lookups, continuing each time where
	 * we left off, because the list lock would prevent calling the
	 * potentially sleeping l2cap_chan_lock() function.
	 */
	pchan = FUNC14(NULL, hcon);
	while (pchan) {
		struct l2cap_chan *chan, *next;

		/* Client fixed channels should override server ones */
		if (FUNC2(conn, pchan->scid))
			goto next;

		FUNC8(pchan);
		chan = pchan->ops->new_connection(pchan);
		if (chan) {
			FUNC3(&chan->src, &hcon->src);
			FUNC3(&chan->dst, &hcon->dst);
			chan->src_type = FUNC5(hcon);
			chan->dst_type = dst_type;

			FUNC1(conn, chan);
		}

		FUNC10(pchan);
next:
		next = FUNC14(pchan, hcon);
		FUNC9(pchan);
		pchan = next;
	}

	FUNC13(conn);
}