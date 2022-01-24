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
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  conf_state; struct l2cap_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,struct l2cap_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONF_LOC_CONF_PEND ; 
 int /*<<< orphan*/  CONF_OUTPUT_DONE ; 
 int /*<<< orphan*/  L2CAP_CONF_RSP ; 
 int /*<<< orphan*/  L2CAP_CONF_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan, void *data,
				    u8 ident, u16 flags)
{
	struct l2cap_conn *conn = chan->conn;

	FUNC0("conn %p chan %p ident %d flags 0x%4.4x", conn, chan, ident,
	       flags);

	FUNC1(CONF_LOC_CONF_PEND, &chan->conf_state);
	FUNC4(CONF_OUTPUT_DONE, &chan->conf_state);

	FUNC3(conn, ident, L2CAP_CONF_RSP,
		       FUNC2(chan, data,
					    L2CAP_CONF_SUCCESS, flags), data);
}