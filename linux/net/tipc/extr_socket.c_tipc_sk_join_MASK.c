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
struct TYPE_4__ {int /*<<< orphan*/  sk_rcvbuf; } ;
struct TYPE_3__ {int rcast; int mandatory; } ;
struct tipc_msg {int dummy; } ;
struct tipc_sock {TYPE_2__ sk; TYPE_1__ mc_method; struct tipc_group* group; int /*<<< orphan*/  group_is_open; int /*<<< orphan*/  portid; struct tipc_msg phdr; } ;
struct tipc_name_seq {int /*<<< orphan*/  lower; int /*<<< orphan*/  upper; int /*<<< orphan*/  type; } ;
struct tipc_group_req {int /*<<< orphan*/  scope; int /*<<< orphan*/  type; int /*<<< orphan*/  instance; } ;
struct tipc_group {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  TIPC_RESERVED_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (TYPE_2__*) ; 
 struct tipc_group* FUNC4 (struct net*,int /*<<< orphan*/ ,struct tipc_group_req*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct tipc_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct tipc_group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct tipc_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tipc_sock*,int /*<<< orphan*/ ,struct tipc_name_seq*) ; 

__attribute__((used)) static int FUNC9(struct tipc_sock *tsk, struct tipc_group_req *mreq)
{
	struct net *net = FUNC3(&tsk->sk);
	struct tipc_group *grp = tsk->group;
	struct tipc_msg *hdr = &tsk->phdr;
	struct tipc_name_seq seq;
	int rc;

	if (mreq->type < TIPC_RESERVED_TYPES)
		return -EACCES;
	if (mreq->scope > TIPC_NODE_SCOPE)
		return -EINVAL;
	if (grp)
		return -EACCES;
	grp = FUNC4(net, tsk->portid, mreq, &tsk->group_is_open);
	if (!grp)
		return -ENOMEM;
	tsk->group = grp;
	FUNC1(hdr, mreq->scope);
	FUNC2(hdr, mreq->type);
	FUNC0(hdr, true);
	seq.type = mreq->type;
	seq.lower = mreq->instance;
	seq.upper = seq.lower;
	FUNC7(net, grp, mreq->type, mreq->scope);
	rc = FUNC8(tsk, mreq->scope, &seq);
	if (rc) {
		FUNC5(net, grp);
		tsk->group = NULL;
		return rc;
	}
	/* Eliminate any risk that a broadcast overtakes sent JOINs */
	tsk->mc_method.rcast = true;
	tsk->mc_method.mandatory = true;
	FUNC6(net, grp, &tsk->sk.sk_rcvbuf);
	return rc;
}