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
struct lowpan_btle_dev {int /*<<< orphan*/  netdev; } ;
struct l2cap_chan {int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int /*<<< orphan*/ ,struct lowpan_btle_dev*) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,struct lowpan_btle_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 struct lowpan_btle_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct l2cap_chan*,struct lowpan_btle_dev**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct l2cap_chan *chan)
{
	struct lowpan_btle_dev *dev;
	bool new_netdev = false;

	dev = FUNC4(chan->conn);

	FUNC0("chan %p conn %p dev %p", chan, chan->conn, dev);

	if (!dev) {
		if (FUNC5(chan, &dev) < 0) {
			FUNC3(chan, -ENOENT);
			return;
		}
		new_netdev = true;
	}

	if (!FUNC6(THIS_MODULE))
		return;

	FUNC1(chan, dev, new_netdev);
	FUNC2(dev->netdev);
}