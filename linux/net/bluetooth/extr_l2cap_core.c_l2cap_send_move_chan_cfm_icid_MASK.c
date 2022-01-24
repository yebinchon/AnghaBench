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
typedef  int /*<<< orphan*/  u16 ;
struct l2cap_move_chan_cfm {void* result; void* icid; } ;
struct l2cap_conn {int dummy; } ;
typedef  int /*<<< orphan*/  cfm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CAP_MC_UNCONFIRMED ; 
 int /*<<< orphan*/  L2CAP_MOVE_CHAN_CFM ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_move_chan_cfm*) ; 

__attribute__((used)) static void FUNC4(struct l2cap_conn *conn, u16 icid)
{
	struct l2cap_move_chan_cfm cfm;

	FUNC0("conn %p, icid 0x%4.4x", conn, icid);

	cfm.icid = FUNC1(icid);
	cfm.result = FUNC1(L2CAP_MC_UNCONFIRMED);

	FUNC3(conn, FUNC2(conn), L2CAP_MOVE_CHAN_CFM,
		       sizeof(cfm), &cfm);
}