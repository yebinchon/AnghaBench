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
struct l2cap_chan {int /*<<< orphan*/  ident; int /*<<< orphan*/  conn; int /*<<< orphan*/  scid; } ;
typedef  int /*<<< orphan*/  cfm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CAP_MOVE_CHAN_CFM ; 
 int /*<<< orphan*/  L2CAP_MOVE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_move_chan_cfm*) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan, u16 result)
{
	struct l2cap_move_chan_cfm cfm;

	FUNC0("chan %p, result 0x%4.4x", chan, result);

	chan->ident = FUNC3(chan->conn);

	cfm.icid = FUNC2(chan->scid);
	cfm.result = FUNC2(result);

	FUNC4(chan->conn, chan->ident, L2CAP_MOVE_CHAN_CFM,
		       sizeof(cfm), &cfm);

	FUNC1(chan, L2CAP_MOVE_TIMEOUT);
}