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
struct p9_trans_fd {TYPE_1__* wr; } ;
struct p9_client {scalar_t__ status; struct p9_trans_fd* trans; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int f_flags; int /*<<< orphan*/  f_pos; } ;

/* Variables and functions */
 scalar_t__ Disconnected ; 
 int EAGAIN ; 
 int EREMOTEIO ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int FUNC0 (TYPE_1__*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct p9_client *client, void *v, int len)
{
	ssize_t ret;
	struct p9_trans_fd *ts = NULL;

	if (client && client->status != Disconnected)
		ts = client->trans;

	if (!ts)
		return -EREMOTEIO;

	if (!(ts->wr->f_flags & O_NONBLOCK))
		FUNC1(P9_DEBUG_ERROR, "blocking write ...\n");

	ret = FUNC0(ts->wr, v, len, &ts->wr->f_pos);
	if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
		client->status = Disconnected;
	return ret;
}