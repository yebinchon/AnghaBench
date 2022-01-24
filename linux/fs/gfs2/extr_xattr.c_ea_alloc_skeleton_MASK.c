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
struct TYPE_4__ {int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; } ;
typedef  int (* ea_skeleton_call_t ) (struct gfs2_inode*,struct gfs2_ea_request*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int FUNC5 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct gfs2_inode *ip, struct gfs2_ea_request *er,
			     unsigned int blks,
			     ea_skeleton_call_t skeleton_call, void *private)
{
	struct gfs2_alloc_parms ap = { .target = blks };
	int error;

	error = FUNC8(FUNC0(&ip->i_inode));
	if (error)
		return error;

	error = FUNC5(ip, &ap);
	if (error)
		return error;

	error = FUNC4(ip, &ap);
	if (error)
		goto out_gunlock_q;

	error = FUNC9(FUNC0(&ip->i_inode),
				 blks + FUNC7(ip, blks) +
				 RES_DINODE + RES_STATFS + RES_QUOTA, 0);
	if (error)
		goto out_ipres;

	error = skeleton_call(ip, er, private);
	if (error)
		goto out_end_trans;

	ip->i_inode.i_ctime = FUNC2(&ip->i_inode);
	FUNC1(&ip->i_inode, I_DIRTY_DATASYNC);

out_end_trans:
	FUNC10(FUNC0(&ip->i_inode));
out_ipres:
	FUNC3(ip);
out_gunlock_q:
	FUNC6(ip);
	return error;
}