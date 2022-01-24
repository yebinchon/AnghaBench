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
struct l2cap_chan {int /*<<< orphan*/  conf_state; int /*<<< orphan*/  kref; int /*<<< orphan*/  state; int /*<<< orphan*/  chan_timer; int /*<<< orphan*/  global_l; int /*<<< orphan*/  nesting; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  BT_OPEN ; 
 int /*<<< orphan*/  CONF_NOT_COMPLETE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CAP_NESTING_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chan_list ; 
 int /*<<< orphan*/  chan_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct l2cap_chan* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_chan_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct l2cap_chan *FUNC10(void)
{
	struct l2cap_chan *chan;

	chan = FUNC4(sizeof(*chan), GFP_ATOMIC);
	if (!chan)
		return NULL;

	FUNC6(&chan->lock);

	/* Set default lock nesting level */
	FUNC2(&chan->nesting, L2CAP_NESTING_NORMAL);

	FUNC8(&chan_list_lock);
	FUNC5(&chan->global_l, &chan_list);
	FUNC9(&chan_list_lock);

	FUNC1(&chan->chan_timer, l2cap_chan_timeout);

	chan->state = BT_OPEN;

	FUNC3(&chan->kref);

	/* This flag is cleared in l2cap_chan_ready() */
	FUNC7(CONF_NOT_COMPLETE, &chan->conf_state);

	FUNC0("chan %p", chan);

	return chan;
}