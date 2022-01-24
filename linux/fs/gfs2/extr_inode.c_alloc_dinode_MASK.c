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
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; int /*<<< orphan*/  i_goal; TYPE_1__ i_inode; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_no_formal_ino; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (TYPE_1__*) ; 
 scalar_t__ RES_QUOTA ; 
 unsigned int RES_RG_BIT ; 
 scalar_t__ RES_STATFS ; 
 int FUNC1 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int FUNC3 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int FUNC4 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC8(struct gfs2_inode *ip, u32 flags, unsigned *dblocks)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_alloc_parms ap = { .target = *dblocks, .aflags = flags, };
	int error;

	error = FUNC4(ip, &ap);
	if (error)
		goto out;

	error = FUNC3(ip, &ap);
	if (error)
		goto out_quota;

	error = FUNC6(sdp, (*dblocks * RES_RG_BIT) + RES_STATFS + RES_QUOTA, 0);
	if (error)
		goto out_ipreserv;

	error = FUNC1(ip, &ip->i_no_addr, dblocks, 1, &ip->i_generation);
	ip->i_no_formal_ino = ip->i_generation;
	ip->i_inode.i_ino = ip->i_no_addr;
	ip->i_goal = ip->i_no_addr;

	FUNC7(sdp);

out_ipreserv:
	FUNC2(ip);
out_quota:
	FUNC5(ip);
out:
	return error;
}