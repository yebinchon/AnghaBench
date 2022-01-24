#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct l2cap_chan {TYPE_2__* conn; } ;
struct TYPE_4__ {TYPE_1__* hcon; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 scalar_t__ LE_LINK ; 
 scalar_t__ FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan)
{
	if (FUNC1(chan)) {
		FUNC0("chan %p AMP capable: discover AMPs", chan);
		FUNC2(chan);
	} else if (chan->conn->hcon->type == LE_LINK) {
		FUNC3(chan);
	} else {
		FUNC4(chan);
	}
}