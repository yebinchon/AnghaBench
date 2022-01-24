#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ncsi_package {int /*<<< orphan*/  lock; int /*<<< orphan*/  channel_num; int /*<<< orphan*/  channels; } ;
struct TYPE_4__ {int enabled; int /*<<< orphan*/  timer; } ;
struct ncsi_channel {unsigned char id; int /*<<< orphan*/  node; TYPE_3__* modes; TYPE_2__* caps; int /*<<< orphan*/  link; int /*<<< orphan*/  lock; TYPE_1__ monitor; int /*<<< orphan*/  state; struct ncsi_package* package; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NCSI_CAP_MAX ; 
 int /*<<< orphan*/  NCSI_CHANNEL_INACTIVE ; 
 int NCSI_MODE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ncsi_channel*) ; 
 struct ncsi_channel* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ncsi_channel_monitor ; 
 struct ncsi_channel* FUNC4 (struct ncsi_package*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ncsi_channel *FUNC9(struct ncsi_package *np, unsigned char id)
{
	struct ncsi_channel *nc, *tmp;
	int index;
	unsigned long flags;

	nc = FUNC2(sizeof(*nc), GFP_ATOMIC);
	if (!nc)
		return NULL;

	nc->id = id;
	nc->package = np;
	nc->state = NCSI_CHANNEL_INACTIVE;
	nc->monitor.enabled = false;
	FUNC8(&nc->monitor.timer, ncsi_channel_monitor, 0);
	FUNC5(&nc->lock);
	FUNC0(&nc->link);
	for (index = 0; index < NCSI_CAP_MAX; index++)
		nc->caps[index].index = index;
	for (index = 0; index < NCSI_MODE_MAX; index++)
		nc->modes[index].index = index;

	FUNC6(&np->lock, flags);
	tmp = FUNC4(np, id);
	if (tmp) {
		FUNC7(&np->lock, flags);
		FUNC1(nc);
		return tmp;
	}

	FUNC3(&nc->node, &np->channels);
	np->channel_num++;
	FUNC7(&np->lock, flags);

	return nc;
}