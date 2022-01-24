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
struct user_namespace {int dummy; } ;
struct nfulnl_instance {int /*<<< orphan*/  hlist; int /*<<< orphan*/  copy_range; int /*<<< orphan*/  copy_mode; int /*<<< orphan*/  nlbufsiz; int /*<<< orphan*/  flushtimeout; int /*<<< orphan*/  qthreshold; int /*<<< orphan*/  group_num; int /*<<< orphan*/  peer_portid; struct user_namespace* peer_user_ns; int /*<<< orphan*/  net; int /*<<< orphan*/  timer; int /*<<< orphan*/  use; int /*<<< orphan*/  lock; } ;
struct nfnl_log_net {int /*<<< orphan*/  instances_lock; int /*<<< orphan*/ * instance_table; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int ENOMEM ; 
 struct nfulnl_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFULNL_COPY_PACKET ; 
 int /*<<< orphan*/  NFULNL_COPY_RANGE_MAX ; 
 int /*<<< orphan*/  NFULNL_NLBUFSIZ_DEFAULT ; 
 int /*<<< orphan*/  NFULNL_QTHRESH_DEFAULT ; 
 int /*<<< orphan*/  NFULNL_TIMEOUT_DEFAULT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC2 (struct nfnl_log_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct nfnl_log_net* FUNC8 (struct net*) ; 
 int /*<<< orphan*/  nfulnl_timer ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfulnl_instance *
FUNC15(struct net *net, u_int16_t group_num,
		u32 portid, struct user_namespace *user_ns)
{
	struct nfulnl_instance *inst;
	struct nfnl_log_net *log = FUNC8(net);
	int err;

	FUNC10(&log->instances_lock);
	if (FUNC2(log, group_num)) {
		err = -EEXIST;
		goto out_unlock;
	}

	inst = FUNC7(sizeof(*inst), GFP_ATOMIC);
	if (!inst) {
		err = -ENOMEM;
		goto out_unlock;
	}

	if (!FUNC14(THIS_MODULE)) {
		FUNC6(inst);
		err = -EAGAIN;
		goto out_unlock;
	}

	FUNC1(&inst->hlist);
	FUNC11(&inst->lock);
	/* needs to be two, since we _put() after creation */
	FUNC9(&inst->use, 2);

	FUNC13(&inst->timer, nfulnl_timer, 0);

	inst->net = FUNC3(net);
	inst->peer_user_ns = user_ns;
	inst->peer_portid = portid;
	inst->group_num = group_num;

	inst->qthreshold 	= NFULNL_QTHRESH_DEFAULT;
	inst->flushtimeout 	= NFULNL_TIMEOUT_DEFAULT;
	inst->nlbufsiz 		= NFULNL_NLBUFSIZ_DEFAULT;
	inst->copy_mode 	= NFULNL_COPY_PACKET;
	inst->copy_range 	= NFULNL_COPY_RANGE_MAX;

	FUNC4(&inst->hlist,
		       &log->instance_table[FUNC5(group_num)]);


	FUNC12(&log->instances_lock);

	return inst;

out_unlock:
	FUNC12(&log->instances_lock);
	return FUNC0(err);
}