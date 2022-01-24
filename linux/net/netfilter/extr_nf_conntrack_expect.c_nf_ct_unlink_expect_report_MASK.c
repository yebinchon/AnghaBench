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
typedef  int /*<<< orphan*/  u32 ;
struct nf_conntrack_expect {size_t class; int /*<<< orphan*/  lnode; int /*<<< orphan*/  hnode; int /*<<< orphan*/  timeout; int /*<<< orphan*/  master; } ;
struct nf_conn_help {int /*<<< orphan*/ * expecting; } ;
struct TYPE_2__ {int /*<<< orphan*/  expect_count; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPEXP_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  expect_delete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net* FUNC3 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_conntrack_expect*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_expect*) ; 
 struct nf_conn_help* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct nf_conntrack_expect *exp,
				u32 portid, int report)
{
	struct nf_conn_help *master_help = FUNC6(exp->master);
	struct net *net = FUNC3(exp);

	FUNC1(!master_help);
	FUNC1(FUNC7(&exp->timeout));

	FUNC2(&exp->hnode);
	net->ct.expect_count--;

	FUNC2(&exp->lnode);
	master_help->expecting[exp->class]--;

	FUNC4(IPEXP_DESTROY, exp, portid, report);
	FUNC5(exp);

	FUNC0(net, expect_delete);
}