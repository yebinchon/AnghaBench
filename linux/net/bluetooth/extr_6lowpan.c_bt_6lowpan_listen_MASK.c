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
struct l2cap_chan {int /*<<< orphan*/  src_type; int /*<<< orphan*/  nesting; int /*<<< orphan*/  state; int /*<<< orphan*/ * ops; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * BDADDR_ANY ; 
 int /*<<< orphan*/  BDADDR_LE_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int /*<<< orphan*/  L2CAP_NESTING_PARENT ; 
 int /*<<< orphan*/  L2CAP_PSM_IPSP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_6lowpan_chan_ops ; 
 struct l2cap_chan* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_6lowpan ; 
 int FUNC5 (struct l2cap_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 

__attribute__((used)) static struct l2cap_chan *FUNC7(void)
{
	bdaddr_t *addr = BDADDR_ANY;
	struct l2cap_chan *chan;
	int err;

	if (!enable_6lowpan)
		return NULL;

	chan = FUNC3();
	if (!chan)
		return NULL;

	chan->ops = &bt_6lowpan_chan_ops;
	chan->state = BT_LISTEN;
	chan->src_type = BDADDR_LE_PUBLIC;

	FUNC2(&chan->nesting, L2CAP_NESTING_PARENT);

	FUNC0("chan %p src type %d", chan, chan->src_type);

	err = FUNC5(chan, addr, FUNC4(L2CAP_PSM_IPSP));
	if (err) {
		FUNC6(chan);
		FUNC1("psm cannot be added err %d", err);
		return NULL;
	}

	return chan;
}