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
struct l2cap_conn {int info_state; TYPE_1__* hcon; } ;
struct l2cap_chan {struct l2cap_conn* conn; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_DISC_TIMEOUT ; 
 int L2CAP_INFO_FEAT_MASK_REQ_DONE ; 
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 

__attribute__((used)) static void FUNC7(struct l2cap_chan *chan)
{
	struct l2cap_conn *conn = chan->conn;

	if (conn->hcon->type == LE_LINK) {
		FUNC4(chan);
		return;
	}

	if (!(conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT)) {
		FUNC5(conn);
		return;
	}

	if (!(conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_DONE))
		return;

	if (!FUNC2(chan, true) ||
	    !FUNC0(chan))
		return;

	if (FUNC3(conn->hcon))
		FUNC6(chan);
	else
		FUNC1(chan, L2CAP_DISC_TIMEOUT);
}