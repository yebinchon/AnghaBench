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
struct l2cap_chan {int /*<<< orphan*/ * ops; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  L2CAP_PSM_IPSP ; 
 int /*<<< orphan*/  bt_6lowpan_chan_ops ; 
 struct l2cap_chan* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 

__attribute__((used)) static int FUNC5(bdaddr_t *addr, u8 dst_type)
{
	struct l2cap_chan *chan;
	int err;

	chan = FUNC1();
	if (!chan)
		return -EINVAL;

	chan->ops = &bt_6lowpan_chan_ops;

	err = FUNC3(chan, FUNC2(L2CAP_PSM_IPSP), 0,
				 addr, dst_type);

	FUNC0("chan %p err %d", chan, err);
	if (err < 0)
		FUNC4(chan);

	return err;
}