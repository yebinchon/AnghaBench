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
struct sk_buff {int dummy; } ;
struct lowpan_peer {int dummy; } ;
struct lowpan_btle_dev {int /*<<< orphan*/  netdev; } ;
struct l2cap_chan {int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EAGAIN ; 
 int ENOENT ; 
 struct lowpan_btle_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct lowpan_peer* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct lowpan_peer*) ; 

__attribute__((used)) static int FUNC4(struct l2cap_chan *chan, struct sk_buff *skb)
{
	struct lowpan_btle_dev *dev;
	struct lowpan_peer *peer;
	int err;

	peer = FUNC2(chan->conn);
	if (!peer)
		return -ENOENT;

	dev = FUNC1(chan->conn);
	if (!dev || !dev->netdev)
		return -ENOENT;

	err = FUNC3(skb, dev->netdev, peer);
	if (err) {
		FUNC0("recv pkt %d", err);
		err = -EAGAIN;
	}

	return err;
}