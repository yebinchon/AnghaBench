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
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_chan {int dummy; } ;

/* Variables and functions */
 struct l2cap_chan* FUNC0 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2cap_chan *FUNC4(struct l2cap_conn *conn,
						  u8 ident)
{
	struct l2cap_chan *c;

	FUNC2(&conn->chan_lock);
	c = FUNC0(conn, ident);
	if (c)
		FUNC1(c);
	FUNC3(&conn->chan_lock);

	return c;
}