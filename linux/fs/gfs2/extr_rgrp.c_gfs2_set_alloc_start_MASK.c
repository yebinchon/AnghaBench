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
typedef  scalar_t__ u64 ;
struct gfs2_rbm {scalar_t__ offset; scalar_t__ bii; TYPE_1__* rgd; } ;
struct TYPE_4__ {struct gfs2_rbm rs_rbm; } ;
struct gfs2_inode {scalar_t__ i_goal; TYPE_2__ i_res; } ;
struct TYPE_3__ {scalar_t__ rd_data0; scalar_t__ rd_last_alloc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_rbm*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct gfs2_rbm *rbm,
				 const struct gfs2_inode *ip, bool dinode)
{
	u64 goal;

	if (FUNC2(&ip->i_res)) {
		*rbm = ip->i_res.rs_rbm;
		return;
	}

	if (!dinode && FUNC3(rbm->rgd, ip->i_goal))
		goal = ip->i_goal;
	else
		goal = rbm->rgd->rd_last_alloc + rbm->rgd->rd_data0;

	if (FUNC0(FUNC1(rbm, goal))) {
		rbm->bii = 0;
		rbm->offset = 0;
	}
}