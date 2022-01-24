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
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  id; int /*<<< orphan*/  mfc_hash; int /*<<< orphan*/  net; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct mfcctl {TYPE_2__ mfcc_mcastgrp; TYPE_1__ mfcc_origin; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/  mnode; } ;
struct mfc_cache {TYPE_3__ _c; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FIB_EVENT_ENTRY_DEL ; 
 int /*<<< orphan*/  RTM_DELROUTE ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,struct mfc_cache*,int /*<<< orphan*/ ) ; 
 struct mfc_cache* FUNC1 (struct mr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ipmr_rht_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mr_table*,struct mfc_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct net* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mr_table *mrt, struct mfcctl *mfc, int parent)
{
	struct net *net = FUNC7(&mrt->net);
	struct mfc_cache *c;

	/* The entries are added/deleted only under RTNL */
	FUNC5();
	c = FUNC1(mrt, mfc->mfcc_origin.s_addr,
				   mfc->mfcc_mcastgrp.s_addr, parent);
	FUNC6();
	if (!c)
		return -ENOENT;
	FUNC8(&mrt->mfc_hash, &c->_c.mnode, ipmr_rht_params);
	FUNC2(&c->_c.list);
	FUNC0(net, FIB_EVENT_ENTRY_DEL, c, mrt->id);
	FUNC4(mrt, c, RTM_DELROUTE);
	FUNC3(&c->_c);

	return 0;
}