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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct l2cap_disconn_rsp {int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct l2cap_chan {scalar_t__ state; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ BT_DISCONN ; 
 int EPROTO ; 
 struct l2cap_chan* FUNC1 (struct l2cap_conn*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*) ; 

__attribute__((used)) static inline int FUNC11(struct l2cap_conn *conn,
				       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				       u8 *data)
{
	struct l2cap_disconn_rsp *rsp = (struct l2cap_disconn_rsp *) data;
	u16 dcid, scid;
	struct l2cap_chan *chan;

	if (cmd_len != sizeof(*rsp))
		return -EPROTO;

	scid = FUNC2(rsp->scid);
	dcid = FUNC2(rsp->dcid);

	FUNC0("dcid 0x%4.4x scid 0x%4.4x", dcid, scid);

	FUNC8(&conn->chan_lock);

	chan = FUNC1(conn, scid);
	if (!chan) {
		FUNC9(&conn->chan_lock);
		return 0;
	}

	FUNC5(chan);

	if (chan->state != BT_DISCONN) {
		FUNC7(chan);
		FUNC9(&conn->chan_lock);
		return 0;
	}

	FUNC4(chan);
	FUNC3(chan, 0);

	FUNC7(chan);

	chan->ops->close(chan);
	FUNC6(chan);

	FUNC9(&conn->chan_lock);

	return 0;
}