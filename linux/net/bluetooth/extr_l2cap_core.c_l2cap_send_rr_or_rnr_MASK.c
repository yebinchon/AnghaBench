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
struct l2cap_ctrl {int sframe; int poll; int /*<<< orphan*/  reqseq; int /*<<< orphan*/  super; } ;
struct l2cap_chan {int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  conn_state; } ;
typedef  int /*<<< orphan*/  control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  L2CAP_SUPER_RNR ; 
 int /*<<< orphan*/  L2CAP_SUPER_RR ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_ctrl*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct l2cap_chan *chan, bool poll)
{
	struct l2cap_ctrl control;

	FUNC0("chan %p, poll %d", chan, poll);

	FUNC2(&control, 0, sizeof(control));
	control.sframe = 1;
	control.poll = poll;

	if (FUNC3(CONN_LOCAL_BUSY, &chan->conn_state))
		control.super = L2CAP_SUPER_RNR;
	else
		control.super = L2CAP_SUPER_RR;

	control.reqseq = chan->buffer_seq;
	FUNC1(chan, &control);
}