#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* b; } ;
struct smp_ltk {scalar_t__ bdaddr_type; int enc_size; scalar_t__ type; int /*<<< orphan*/  val; int /*<<< orphan*/  rand; int /*<<< orphan*/  ediv; TYPE_3__ bdaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_5__ {int enc_size; int master; struct mgmt_ev_new_long_term_key* val; int /*<<< orphan*/  rand; int /*<<< orphan*/  ediv; int /*<<< orphan*/  type; TYPE_1__ addr; } ;
struct mgmt_ev_new_long_term_key {int store_hint; TYPE_2__ key; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 scalar_t__ ADDR_LE_DEV_RANDOM ; 
 int /*<<< orphan*/  LE_LINK ; 
 int /*<<< orphan*/  MGMT_EV_NEW_LONG_TERM_KEY ; 
 scalar_t__ SMP_LTK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_ev_new_long_term_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mgmt_ev_new_long_term_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_new_long_term_key*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smp_ltk*) ; 

void FUNC6(struct hci_dev *hdev, struct smp_ltk *key, bool persistent)
{
	struct mgmt_ev_new_long_term_key ev;

	FUNC3(&ev, 0, sizeof(ev));

	/* Devices using resolvable or non-resolvable random addresses
	 * without providing an identity resolving key don't require
	 * to store long term keys. Their addresses will change the
	 * next time around.
	 *
	 * Only when a remote device provides an identity address
	 * make sure the long term key is stored. If the remote
	 * identity is known, the long term keys are internally
	 * mapped to the identity address. So allow static random
	 * and public addresses here.
	 */
	if (key->bdaddr_type == ADDR_LE_DEV_RANDOM &&
	    (key->bdaddr.b[5] & 0xc0) != 0xc0)
		ev.store_hint = 0x00;
	else
		ev.store_hint = persistent;

	FUNC0(&ev.key.addr.bdaddr, &key->bdaddr);
	ev.key.addr.type = FUNC1(LE_LINK, key->bdaddr_type);
	ev.key.type = FUNC5(key);
	ev.key.enc_size = key->enc_size;
	ev.key.ediv = key->ediv;
	ev.key.rand = key->rand;

	if (key->type == SMP_LTK)
		ev.key.master = 1;

	/* Make sure we copy only the significant bytes based on the
	 * encryption key size, and set the rest of the value to zeroes.
	 */
	FUNC2(ev.key.val, key->val, key->enc_size);
	FUNC3(ev.key.val + key->enc_size, 0,
	       sizeof(ev.key.val) - key->enc_size);

	FUNC4(MGMT_EV_NEW_LONG_TERM_KEY, hdev, &ev, sizeof(ev), NULL);
}