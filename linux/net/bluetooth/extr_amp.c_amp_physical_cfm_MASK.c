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
struct l2cap_chan {TYPE_1__* conn; struct hci_conn* hs_hcon; int /*<<< orphan*/  local_amp_id; int /*<<< orphan*/  remote_amp_id; int /*<<< orphan*/  flags; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {TYPE_2__* hdev; int /*<<< orphan*/  remote_id; struct amp_mgr* amp_mgr; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  block_mtu; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,struct hci_conn*,struct amp_mgr*) ; 
 int /*<<< orphan*/  FLAG_EFS_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct hci_conn *bredr_hcon, struct hci_conn *hs_hcon)
{
	struct hci_dev *bredr_hdev = FUNC2(bredr_hcon->hdev);
	struct amp_mgr *mgr = hs_hcon->amp_mgr;
	struct l2cap_chan *bredr_chan;

	FUNC0("bredr_hcon %p hs_hcon %p mgr %p", bredr_hcon, hs_hcon, mgr);

	if (!bredr_hdev || !mgr || !mgr->bredr_chan)
		return;

	bredr_chan = mgr->bredr_chan;

	FUNC4(bredr_chan);

	FUNC6(FLAG_EFS_ENABLE, &bredr_chan->flags);
	bredr_chan->remote_amp_id = hs_hcon->remote_id;
	bredr_chan->local_amp_id = hs_hcon->hdev->id;
	bredr_chan->hs_hcon = hs_hcon;
	bredr_chan->conn->mtu = hs_hcon->hdev->block_mtu;

	FUNC1(bredr_chan, 0);

	FUNC5(bredr_chan);

	FUNC3(bredr_hdev);
}