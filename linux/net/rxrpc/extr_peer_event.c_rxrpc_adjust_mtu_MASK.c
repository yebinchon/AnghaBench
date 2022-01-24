#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int ee_info; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct rxrpc_peer {int if_mtu; int hdrsize; int mtu; int maxdata; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rxrpc_peer *peer, struct sock_exterr_skb *serr)
{
	u32 mtu = serr->ee.ee_info;

	FUNC0("Rx ICMP Fragmentation Needed (%d)", mtu);

	/* wind down the local interface MTU */
	if (mtu > 0 && peer->if_mtu == 65535 && mtu < peer->if_mtu) {
		peer->if_mtu = mtu;
		FUNC0("I/F MTU %u", mtu);
	}

	if (mtu == 0) {
		/* they didn't give us a size, estimate one */
		mtu = peer->if_mtu;
		if (mtu > 1500) {
			mtu >>= 1;
			if (mtu < 1500)
				mtu = 1500;
		} else {
			mtu -= 100;
			if (mtu < peer->hdrsize)
				mtu = peer->hdrsize + 4;
		}
	}

	if (mtu < peer->mtu) {
		FUNC1(&peer->lock);
		peer->mtu = mtu;
		peer->maxdata = peer->mtu - peer->hdrsize;
		FUNC2(&peer->lock);
		FUNC0("Net MTU %u (maxdata %u)",
		     peer->mtu, peer->maxdata);
	}
}