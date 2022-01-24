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
struct sunrpc_net {scalar_t__ pipe_version; } ;
struct rpc_pipe {int /*<<< orphan*/  lock; } ;
struct rpc_cred {TYPE_2__* cr_cred; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int errno; } ;
struct gss_upcall_msg {int /*<<< orphan*/  waitqueue; TYPE_1__ msg; int /*<<< orphan*/ * ctx; struct rpc_pipe* pipe; } ;
struct gss_cred {struct rpc_cred gc_base; } ;
struct gss_auth {struct net* net; } ;
struct TYPE_4__ {int /*<<< orphan*/  fsuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct gss_upcall_msg*) ; 
 int FUNC2 (struct gss_upcall_msg*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_cred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gss_upcall_msg*) ; 
 struct gss_upcall_msg* FUNC8 (struct gss_auth*,struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct sunrpc_net* FUNC10 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_version_waitqueue ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static inline int
FUNC18(struct gss_auth *gss_auth, struct gss_cred *gss_cred)
{
	struct net *net = gss_auth->net;
	struct sunrpc_net *sn = FUNC10(net, sunrpc_net_id);
	struct rpc_pipe *pipe;
	struct rpc_cred *cred = &gss_cred->gc_base;
	struct gss_upcall_msg *gss_msg;
	FUNC0(wait);
	int err;

retry:
	err = 0;
	/* if gssd is down, just skip upcalling altogether */
	if (!FUNC9(net)) {
		FUNC17();
		err = -EACCES;
		goto out;
	}
	gss_msg = FUNC8(gss_auth, cred);
	if (FUNC2(gss_msg) == -EAGAIN) {
		err = FUNC16(pipe_version_waitqueue,
				sn->pipe_version >= 0, 15 * HZ);
		if (sn->pipe_version < 0) {
			FUNC17();
			err = -EACCES;
		}
		if (err < 0)
			goto out;
		goto retry;
	}
	if (FUNC1(gss_msg)) {
		err = FUNC2(gss_msg);
		goto out;
	}
	pipe = gss_msg->pipe;
	for (;;) {
		FUNC11(&gss_msg->waitqueue, &wait, TASK_KILLABLE);
		FUNC13(&pipe->lock);
		if (gss_msg->ctx != NULL || gss_msg->msg.errno < 0) {
			break;
		}
		FUNC14(&pipe->lock);
		if (FUNC3(current)) {
			err = -ERESTARTSYS;
			goto out_intr;
		}
		FUNC12();
	}
	if (gss_msg->ctx)
		FUNC6(cred, gss_msg->ctx);
	else
		err = gss_msg->msg.errno;
	FUNC14(&pipe->lock);
out_intr:
	FUNC4(&gss_msg->waitqueue, &wait);
	FUNC7(gss_msg);
out:
	FUNC15(FUNC5(&init_user_ns,
					     cred->cr_cred->fsuid), err);
	return err;
}