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
struct l2cap_disconn_req {void* scid; void* dcid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {scalar_t__ mode; scalar_t__ state; scalar_t__ scid; scalar_t__ dcid; struct l2cap_conn* conn; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  BT_DISCONN ; 
 scalar_t__ L2CAP_CID_A2MP ; 
 int /*<<< orphan*/  L2CAP_DISCONN_REQ ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_disconn_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct l2cap_chan *chan, int err)
{
	struct l2cap_conn *conn = chan->conn;
	struct l2cap_disconn_req req;

	if (!conn)
		return;

	if (chan->mode == L2CAP_MODE_ERTM && chan->state == BT_CONNECTED) {
		FUNC2(chan);
		FUNC1(chan);
		FUNC0(chan);
	}

	if (chan->scid == L2CAP_CID_A2MP) {
		FUNC6(chan, BT_DISCONN);
		return;
	}

	req.dcid = FUNC3(chan->dcid);
	req.scid = FUNC3(chan->scid);
	FUNC5(conn, FUNC4(conn), L2CAP_DISCONN_REQ,
		       sizeof(req), &req);

	FUNC7(chan, BT_DISCONN, err);
}