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
struct qstr {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_diradd {scalar_t__ nr_blocks; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int RES_DINODE ; 
 scalar_t__ RES_LEAF ; 
 int FUNC1 (int /*<<< orphan*/ *,struct qstr const*,struct gfs2_inode*,struct gfs2_diradd*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int FUNC3 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int FUNC4 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*,struct gfs2_diradd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC9(struct gfs2_inode *dip, const struct qstr *name,
		       struct gfs2_inode *ip, struct gfs2_diradd *da)
{
	struct gfs2_sbd *sdp = FUNC0(&dip->i_inode);
	struct gfs2_alloc_parms ap = { .target = da->nr_blocks, };
	int error;

	if (da->nr_blocks) {
		error = FUNC4(dip, &ap);
		if (error)
			goto fail_quota_locks;

		error = FUNC3(dip, &ap);
		if (error)
			goto fail_quota_locks;

		error = FUNC6(sdp, FUNC7(dip, da, 2), 0);
		if (error)
			goto fail_ipreserv;
	} else {
		error = FUNC6(sdp, RES_LEAF + 2 * RES_DINODE, 0);
		if (error)
			goto fail_quota_locks;
	}

	error = FUNC1(&dip->i_inode, name, ip, da);

	FUNC8(sdp);
fail_ipreserv:
	FUNC2(dip);
fail_quota_locks:
	FUNC5(dip);
	return error;
}