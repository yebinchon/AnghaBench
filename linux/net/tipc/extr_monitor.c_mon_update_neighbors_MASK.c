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
struct tipc_peer {int dummy; } ;
struct tipc_monitor {int /*<<< orphan*/  peer_cnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_monitor*,struct tipc_peer*) ; 
 struct tipc_peer* FUNC2 (struct tipc_peer*) ; 

__attribute__((used)) static void FUNC3(struct tipc_monitor *mon,
				 struct tipc_peer *peer)
{
	int dz, i;

	dz = FUNC0(mon->peer_cnt);
	for (i = 0; i < dz; i++) {
		FUNC1(mon, peer);
		peer = FUNC2(peer);
	}
}