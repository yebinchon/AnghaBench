#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ const vcn; int length; scalar_t__ lcn; } ;
typedef  TYPE_3__ runlist_element ;
struct TYPE_13__ {TYPE_3__* rl; } ;
struct TYPE_16__ {TYPE_2__* vol; TYPE_1__ runlist; int /*<<< orphan*/  size_lock; int /*<<< orphan*/  allocated_size; int /*<<< orphan*/  mft_no; } ;
typedef  TYPE_4__ ntfs_inode ;
struct TYPE_17__ {int /*<<< orphan*/  mrec; } ;
typedef  TYPE_5__ ntfs_attr_search_ctx ;
typedef  scalar_t__ VCN ;
struct TYPE_14__ {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 TYPE_3__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LCN_ENOENT ; 
 scalar_t__ LCN_HOLE ; 
 scalar_t__ LCN_RL_NOT_MAPPED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (TYPE_4__*,scalar_t__ const,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 

runlist_element *FUNC12(ntfs_inode *ni, const VCN vcn,
		ntfs_attr_search_ctx *ctx)
{
	unsigned long flags;
	runlist_element *rl;
	int err = 0;
	bool is_retry = false;

	FUNC0(!ni);
	FUNC6("Entering for i_ino 0x%lx, vcn 0x%llx, with%s ctx.",
			ni->mft_no, (unsigned long long)vcn, ctx ? "" : "out");
	FUNC0(!FUNC3(ni));
	FUNC0(vcn < 0);
	if (!ni->runlist.rl) {
		FUNC9(&ni->size_lock, flags);
		if (!ni->allocated_size) {
			FUNC10(&ni->size_lock, flags);
			return FUNC1(-ENOENT);
		}
		FUNC10(&ni->size_lock, flags);
	}
retry_remap:
	rl = ni->runlist.rl;
	if (FUNC5(rl && vcn >= rl[0].vcn)) {
		while (FUNC5(rl->length)) {
			if (FUNC11(vcn < rl[1].vcn)) {
				if (FUNC5(rl->lcn >= LCN_HOLE)) {
					FUNC6("Done.");
					return rl;
				}
				break;
			}
			rl++;
		}
		if (FUNC5(rl->lcn != LCN_RL_NOT_MAPPED)) {
			if (FUNC5(rl->lcn == LCN_ENOENT))
				err = -ENOENT;
			else
				err = -EIO;
		}
	}
	if (!err && !is_retry) {
		/*
		 * If the search context is invalid we cannot map the unmapped
		 * region.
		 */
		if (FUNC2(ctx->mrec))
			err = FUNC4(ctx->mrec);
		else {
			/*
			 * The @vcn is in an unmapped region, map the runlist
			 * and retry.
			 */
			err = FUNC8(ni, vcn, ctx);
			if (FUNC5(!err)) {
				is_retry = true;
				goto retry_remap;
			}
		}
		if (err == -EINVAL)
			err = -EIO;
	} else if (!err)
		err = -EIO;
	if (err != -ENOENT)
		FUNC7(ni->vol->sb, "Failed with error code %i.", err);
	return FUNC1(err);
}