#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  rl; } ;
struct TYPE_9__ {TYPE_2__* vol; TYPE_1__ runlist; int /*<<< orphan*/  size_lock; int /*<<< orphan*/  allocated_size; int /*<<< orphan*/  mft_no; } ;
typedef  TYPE_3__ ntfs_inode ;
typedef  scalar_t__ VCN ;
struct TYPE_8__ {int /*<<< orphan*/  sb; } ;
typedef  scalar_t__ LCN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ LCN_EIO ; 
 scalar_t__ LCN_ENOENT ; 
 scalar_t__ LCN_ENOMEM ; 
 scalar_t__ LCN_HOLE ; 
 scalar_t__ LCN_RL_NOT_MAPPED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,long long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,long long) ; 
 int FUNC7 (TYPE_3__*,scalar_t__ const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

LCN FUNC14(ntfs_inode *ni, const VCN vcn,
		const bool write_locked)
{
	LCN lcn;
	unsigned long flags;
	bool is_retry = false;

	FUNC0(!ni);
	FUNC5("Entering for i_ino 0x%lx, vcn 0x%llx, %s_locked.",
			ni->mft_no, (unsigned long long)vcn,
			write_locked ? "write" : "read");
	FUNC0(!FUNC1(ni));
	FUNC0(vcn < 0);
	if (!ni->runlist.rl) {
		FUNC9(&ni->size_lock, flags);
		if (!ni->allocated_size) {
			FUNC10(&ni->size_lock, flags);
			return LCN_ENOENT;
		}
		FUNC10(&ni->size_lock, flags);
	}
retry_remap:
	/* Convert vcn to lcn.  If that fails map the runlist and retry once. */
	lcn = FUNC8(ni->runlist.rl, vcn);
	if (FUNC4(lcn >= LCN_HOLE)) {
		FUNC5("Done, lcn 0x%llx.", (long long)lcn);
		return lcn;
	}
	if (lcn != LCN_RL_NOT_MAPPED) {
		if (lcn != LCN_ENOENT)
			lcn = LCN_EIO;
	} else if (!is_retry) {
		int err;

		if (!write_locked) {
			FUNC12(&ni->runlist.lock);
			FUNC3(&ni->runlist.lock);
			if (FUNC11(FUNC8(ni->runlist.rl, vcn) !=
					LCN_RL_NOT_MAPPED)) {
				FUNC13(&ni->runlist.lock);
				FUNC2(&ni->runlist.lock);
				goto retry_remap;
			}
		}
		err = FUNC7(ni, vcn, NULL);
		if (!write_locked) {
			FUNC13(&ni->runlist.lock);
			FUNC2(&ni->runlist.lock);
		}
		if (FUNC4(!err)) {
			is_retry = true;
			goto retry_remap;
		}
		if (err == -ENOENT)
			lcn = LCN_ENOENT;
		else if (err == -ENOMEM)
			lcn = LCN_ENOMEM;
		else
			lcn = LCN_EIO;
	}
	if (lcn != LCN_ENOENT)
		FUNC6(ni->vol->sb, "Failed with error code %lli.",
				(long long)lcn);
	return lcn;
}