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
struct sk_buff {int dummy; } ;
struct ncsi_request {int enabled; int used; int flags; struct sk_buff* rsp; struct sk_buff* cmd; int /*<<< orphan*/  timer; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {scalar_t__ pending_req_num; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int NCSI_REQ_FLAG_EVENT_DRIVEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct ncsi_request *nr)
{
	struct ncsi_dev_priv *ndp = nr->ndp;
	struct sk_buff *cmd, *rsp;
	unsigned long flags;
	bool driven;

	if (nr->enabled) {
		nr->enabled = false;
		FUNC1(&nr->timer);
	}

	FUNC3(&ndp->lock, flags);
	cmd = nr->cmd;
	rsp = nr->rsp;
	nr->cmd = NULL;
	nr->rsp = NULL;
	nr->used = false;
	driven = !!(nr->flags & NCSI_REQ_FLAG_EVENT_DRIVEN);
	FUNC4(&ndp->lock, flags);

	if (driven && cmd && --ndp->pending_req_num == 0)
		FUNC2(&ndp->work);

	/* Release command and response */
	FUNC0(cmd);
	FUNC0(rsp);
}