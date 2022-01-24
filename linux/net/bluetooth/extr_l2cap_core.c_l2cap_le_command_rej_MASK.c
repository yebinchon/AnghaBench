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
typedef  int u16 ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_cmd_rej_unk {int dummy; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int EPROTO ; 
 struct l2cap_chan* FUNC0 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(struct l2cap_conn *conn,
				       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				       u8 *data)
{
	struct l2cap_cmd_rej_unk *rej = (struct l2cap_cmd_rej_unk *) data;
	struct l2cap_chan *chan;

	if (cmd_len < sizeof(*rej))
		return -EPROTO;

	FUNC4(&conn->chan_lock);

	chan = FUNC0(conn, cmd->ident);
	if (!chan)
		goto done;

	FUNC2(chan);
	FUNC1(chan, ECONNREFUSED);
	FUNC3(chan);

done:
	FUNC5(&conn->chan_lock);
	return 0;
}