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
struct l2cap_chan {int /*<<< orphan*/  move_state; int /*<<< orphan*/  move_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_RSP ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct l2cap_chan *chan, u8 local_amp_id,
				   u8 remote_amp_id)
{
	FUNC0(chan);
	chan->move_id = local_amp_id;
	chan->move_state = L2CAP_MOVE_WAIT_RSP;

	FUNC1(chan, remote_amp_id);
}