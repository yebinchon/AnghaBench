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
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 struct lowpan_btle_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan)
{
	struct lowpan_btle_dev *dev;

	FUNC0("chan %p resume", chan);

	dev = FUNC1(chan->conn);
	if (!dev || !dev->netdev)
		return;

	FUNC2(dev->netdev);
}