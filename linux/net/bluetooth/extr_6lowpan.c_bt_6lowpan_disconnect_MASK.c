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
struct lowpan_peer {int /*<<< orphan*/  chan; } ;
struct l2cap_conn {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct lowpan_peer*,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct lowpan_peer* FUNC2 (struct lowpan_peer*) ; 

__attribute__((used)) static int FUNC3(struct l2cap_conn *conn, u8 dst_type)
{
	struct lowpan_peer *peer;

	FUNC0("conn %p dst type %d", conn, dst_type);

	peer = FUNC2(conn);
	if (!peer)
		return -ENOENT;

	FUNC0("peer %p chan %p", peer, peer->chan);

	FUNC1(peer->chan, ENOENT);

	return 0;
}