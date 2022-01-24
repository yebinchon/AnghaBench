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
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u32 ;
struct nfqnl_instance {int /*<<< orphan*/  hlist; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  copy_mode; int /*<<< orphan*/  copy_range; int /*<<< orphan*/  queue_maxlen; int /*<<< orphan*/  peer_portid; int /*<<< orphan*/  queue_num; } ;
struct nfnl_queue_net {int /*<<< orphan*/  instances_lock; int /*<<< orphan*/ * instance_table; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int ENOMEM ; 
 struct nfqnl_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFQNL_COPY_NONE ; 
 int /*<<< orphan*/  NFQNL_MAX_COPY_RANGE ; 
 int /*<<< orphan*/  NFQNL_QMAX_DEFAULT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nfnl_queue_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfqnl_instance*) ; 
 struct nfqnl_instance* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfqnl_instance *
FUNC11(struct nfnl_queue_net *q, u_int16_t queue_num, u32 portid)
{
	struct nfqnl_instance *inst;
	unsigned int h;
	int err;

	FUNC7(&q->instances_lock);
	if (FUNC4(q, queue_num)) {
		err = -EEXIST;
		goto out_unlock;
	}

	inst = FUNC6(sizeof(*inst), GFP_ATOMIC);
	if (!inst) {
		err = -ENOMEM;
		goto out_unlock;
	}

	inst->queue_num = queue_num;
	inst->peer_portid = portid;
	inst->queue_maxlen = NFQNL_QMAX_DEFAULT;
	inst->copy_range = NFQNL_MAX_COPY_RANGE;
	inst->copy_mode = NFQNL_COPY_NONE;
	FUNC8(&inst->lock);
	FUNC1(&inst->queue_list);

	if (!FUNC10(THIS_MODULE)) {
		err = -EAGAIN;
		goto out_free;
	}

	h = FUNC3(queue_num);
	FUNC2(&inst->hlist, &q->instance_table[h]);

	FUNC9(&q->instances_lock);

	return inst;

out_free:
	FUNC5(inst);
out_unlock:
	FUNC9(&q->instances_lock);
	return FUNC0(err);
}