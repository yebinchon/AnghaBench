#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct tcf_proto {TYPE_1__* ops; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; struct tcf_chain* chain; void* prio; void* protocol; int /*<<< orphan*/  classify; } ;
struct tcf_chain {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int (* init ) (struct tcf_proto*) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  classify; } ;

/* Variables and functions */
 int ENOBUFS ; 
 struct tcf_proto* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*) ; 
 struct tcf_proto* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct tcf_proto*) ; 
 TYPE_1__* FUNC9 (char const*,int,struct netlink_ext_ack*) ; 

__attribute__((used)) static struct tcf_proto *FUNC10(const char *kind, u32 protocol,
					  u32 prio, struct tcf_chain *chain,
					  bool rtnl_held,
					  struct netlink_ext_ack *extack)
{
	struct tcf_proto *tp;
	int err;

	tp = FUNC4(sizeof(*tp), GFP_KERNEL);
	if (!tp)
		return FUNC0(-ENOBUFS);

	tp->ops = FUNC9(kind, rtnl_held, extack);
	if (FUNC1(tp->ops)) {
		err = FUNC2(tp->ops);
		goto errout;
	}
	tp->classify = tp->ops->classify;
	tp->protocol = protocol;
	tp->prio = prio;
	tp->chain = chain;
	FUNC7(&tp->lock);
	FUNC6(&tp->refcnt, 1);

	err = tp->ops->init(tp);
	if (err) {
		FUNC5(tp->ops->owner);
		goto errout;
	}
	return tp;

errout:
	FUNC3(tp);
	return FUNC0(err);
}