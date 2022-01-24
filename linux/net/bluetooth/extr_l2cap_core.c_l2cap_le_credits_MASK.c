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
struct l2cap_le_credits {int /*<<< orphan*/  credits; int /*<<< orphan*/  cid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct l2cap_chan {int tx_credits; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EBADSLT ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int EPROTO ; 
 int LE_FLOWCTL_MAX_CREDITS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC4 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 

__attribute__((used)) static inline int FUNC8(struct l2cap_conn *conn,
				   struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				   u8 *data)
{
	struct l2cap_le_credits *pkt;
	struct l2cap_chan *chan;
	u16 cid, credits, max_credits;

	if (cmd_len != sizeof(*pkt))
		return -EPROTO;

	pkt = (struct l2cap_le_credits *) data;
	cid	= FUNC2(pkt->cid);
	credits	= FUNC2(pkt->credits);

	FUNC0("cid 0x%4.4x credits 0x%4.4x", cid, credits);

	chan = FUNC4(conn, cid);
	if (!chan)
		return -EBADSLT;

	max_credits = LE_FLOWCTL_MAX_CREDITS - chan->tx_credits;
	if (credits > max_credits) {
		FUNC1("LE credits overflow");
		FUNC6(chan, ECONNRESET);
		FUNC3(chan);

		/* Return 0 so that we don't trigger an unnecessary
		 * command reject packet.
		 */
		return 0;
	}

	chan->tx_credits += credits;

	/* Resume sending */
	FUNC5(chan);

	if (chan->tx_credits)
		chan->ops->resume(chan);

	FUNC3(chan);

	return 0;
}