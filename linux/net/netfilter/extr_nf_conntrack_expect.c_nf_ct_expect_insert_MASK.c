#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nf_conntrack_helper {TYPE_1__* expect_policy; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {size_t class; int /*<<< orphan*/  hnode; int /*<<< orphan*/  lnode; TYPE_3__ timeout; int /*<<< orphan*/  use; int /*<<< orphan*/  tuple; int /*<<< orphan*/  master; } ;
struct nf_conn_help {int /*<<< orphan*/ * expecting; int /*<<< orphan*/  expectations; int /*<<< orphan*/  helper; } ;
struct TYPE_6__ {int /*<<< orphan*/  expect_count; } ;
struct net {TYPE_2__ ct; } ;
struct TYPE_5__ {int timeout; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  expect_create ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_expect_lock ; 
 struct net* FUNC4 (struct nf_conntrack_expect*) ; 
 unsigned int FUNC5 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_ct_expect_hash ; 
 int /*<<< orphan*/  nf_ct_expectation_timed_out ; 
 struct nf_conn_help* FUNC6 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_helper* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct nf_conntrack_expect *exp)
{
	struct nf_conn_help *master_help = FUNC6(exp->master);
	struct nf_conntrack_helper *helper;
	struct net *net = FUNC4(exp);
	unsigned int h = FUNC5(net, &exp->tuple);

	/* two references : one for hash insert, one for the timer */
	FUNC8(2, &exp->use);

	FUNC9(&exp->timeout, nf_ct_expectation_timed_out, 0);
	helper = FUNC7(master_help->helper,
					   FUNC3(&nf_conntrack_expect_lock));
	if (helper) {
		exp->timeout.expires = jiffies +
			helper->expect_policy[exp->class].timeout * HZ;
	}
	FUNC1(&exp->timeout);

	FUNC2(&exp->lnode, &master_help->expectations);
	master_help->expecting[exp->class]++;

	FUNC2(&exp->hnode, &nf_ct_expect_hash[h]);
	net->ct.expect_count++;

	FUNC0(net, expect_create);
}