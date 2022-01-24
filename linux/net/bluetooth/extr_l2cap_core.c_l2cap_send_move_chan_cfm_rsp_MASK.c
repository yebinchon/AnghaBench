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
typedef  int /*<<< orphan*/  u16 ;
struct l2cap_move_chan_cfm_rsp {int /*<<< orphan*/  icid; } ;
struct l2cap_conn {int dummy; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CAP_MOVE_CHAN_CFM_RSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_move_chan_cfm_rsp*) ; 

__attribute__((used)) static void FUNC3(struct l2cap_conn *conn, u8 ident,
					 u16 icid)
{
	struct l2cap_move_chan_cfm_rsp rsp;

	FUNC0("icid 0x%4.4x", icid);

	rsp.icid = FUNC1(icid);
	FUNC2(conn, ident, L2CAP_MOVE_CHAN_CFM_RSP, sizeof(rsp), &rsp);
}