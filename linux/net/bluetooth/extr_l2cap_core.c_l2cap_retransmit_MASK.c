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
struct l2cap_ctrl {int /*<<< orphan*/  reqseq; } ;
struct l2cap_chan {int /*<<< orphan*/  retrans_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan,
			     struct l2cap_ctrl *control)
{
	FUNC0("chan %p, control %p", chan, control);

	FUNC2(&chan->retrans_list, control->reqseq);
	FUNC1(chan);
}