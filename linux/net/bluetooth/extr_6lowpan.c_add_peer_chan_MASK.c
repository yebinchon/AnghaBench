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
struct lowpan_peer {struct l2cap_chan* chan; int /*<<< orphan*/  list; scalar_t__ lladdr; int /*<<< orphan*/  peer_addr; } ;
struct lowpan_btle_dev {int /*<<< orphan*/  notify_peers; } ;
struct l2cap_chan {int /*<<< orphan*/  dst; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devices_lock ; 
 int /*<<< orphan*/  do_notify_peers ; 
 struct lowpan_peer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct lowpan_btle_dev*,struct lowpan_peer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2cap_chan *FUNC11(struct l2cap_chan *chan,
					struct lowpan_btle_dev *dev,
					bool new_netdev)
{
	struct lowpan_peer *peer;

	peer = FUNC3(sizeof(*peer), GFP_ATOMIC);
	if (!peer)
		return NULL;

	peer->chan = chan;
	FUNC5(&peer->peer_addr, 0, sizeof(struct in6_addr));

	FUNC2((void *)peer->lladdr, &chan->dst);

	FUNC4(&peer->peer_addr, peer->lladdr);

	FUNC9(&devices_lock);
	FUNC1(&peer->list);
	FUNC7(dev, peer);
	FUNC10(&devices_lock);

	/* Notifying peers about us needs to be done without locks held */
	if (new_netdev)
		FUNC0(&dev->notify_peers, do_notify_peers);
	FUNC8(&dev->notify_peers, FUNC6(100));

	return peer->chan;
}