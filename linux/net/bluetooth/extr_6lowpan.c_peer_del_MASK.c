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
struct lowpan_peer {int /*<<< orphan*/  list; } ;
struct lowpan_btle_dev {int /*<<< orphan*/  peer_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lowpan_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static inline bool FUNC5(struct lowpan_btle_dev *dev,
			    struct lowpan_peer *peer)
{
	FUNC3(&peer->list);
	FUNC2(peer, rcu);

	FUNC4(THIS_MODULE);

	if (FUNC1(&dev->peer_count)) {
		FUNC0("last peer");
		return true;
	}

	return false;
}