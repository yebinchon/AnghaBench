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
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  pin_len; int /*<<< orphan*/  val; int /*<<< orphan*/  type; TYPE_1__ addr; } ;
struct mgmt_ev_new_link_key {int store_hint; TYPE_2__ key; } ;
struct link_key {int /*<<< orphan*/  pin_len; int /*<<< orphan*/  val; int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  HCI_LINK_KEY_SIZE ; 
 int /*<<< orphan*/  MGMT_EV_NEW_LINK_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_ev_new_link_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_new_link_key*,int,int /*<<< orphan*/ *) ; 

void FUNC4(struct hci_dev *hdev, struct link_key *key,
		       bool persistent)
{
	struct mgmt_ev_new_link_key ev;

	FUNC2(&ev, 0, sizeof(ev));

	ev.store_hint = persistent;
	FUNC0(&ev.key.addr.bdaddr, &key->bdaddr);
	ev.key.addr.type = BDADDR_BREDR;
	ev.key.type = key->type;
	FUNC1(ev.key.val, key->val, HCI_LINK_KEY_SIZE);
	ev.key.pin_len = key->pin_len;

	FUNC3(MGMT_EV_NEW_LINK_KEY, hdev, &ev, sizeof(ev), NULL);
}