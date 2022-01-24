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
struct the_nilfs {int /*<<< orphan*/  ns_sb; int /*<<< orphan*/  ns_blocksize; int /*<<< orphan*/  ns_bdev; } ;
struct nilfs_recovery_info {int /*<<< orphan*/  ri_lsegs_start; int /*<<< orphan*/  ri_super_root; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct the_nilfs *nilfs,
				      struct nilfs_recovery_info *ri)
{
	struct buffer_head *bh;
	int err;

	if (FUNC4(nilfs, ri->ri_lsegs_start) !=
	    FUNC4(nilfs, ri->ri_super_root))
		return;

	bh = FUNC1(nilfs->ns_bdev, ri->ri_lsegs_start, nilfs->ns_blocksize);
	FUNC0(!bh);
	FUNC3(bh->b_data, 0, bh->b_size);
	FUNC6(bh);
	err = FUNC7(bh);
	if (FUNC8(err))
		FUNC5(nilfs->ns_sb, KERN_WARNING,
			  "buffer sync write failed during post-cleaning of recovery.");
	FUNC2(bh);
}