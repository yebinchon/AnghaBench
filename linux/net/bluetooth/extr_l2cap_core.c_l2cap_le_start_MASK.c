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
struct l2cap_conn {int /*<<< orphan*/  hcon; } ;
struct l2cap_chan {scalar_t__ state; int /*<<< orphan*/  psm; int /*<<< orphan*/  sec_level; struct l2cap_conn* conn; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan)
{
	struct l2cap_conn *conn = chan->conn;

	if (!FUNC2(conn->hcon, chan->sec_level))
		return;

	if (!chan->psm) {
		FUNC0(chan);
		return;
	}

	if (chan->state == BT_CONNECT)
		FUNC1(chan);
}