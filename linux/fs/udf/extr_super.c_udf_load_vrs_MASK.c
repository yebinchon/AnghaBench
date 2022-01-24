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
struct udf_sb_info {int /*<<< orphan*/  s_anchor; scalar_t__ s_last_block; } ;
struct udf_options {int /*<<< orphan*/  anchor; int /*<<< orphan*/  novrs; scalar_t__ lastblock; int /*<<< orphan*/  blocksize; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  VSD_FIRST_SECTOR_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct super_block*,struct kernel_lb_addr*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb, struct udf_options *uopt,
			int silent, struct kernel_lb_addr *fileset)
{
	struct udf_sb_info *sbi = FUNC0(sb);
	int nsr = 0;
	int ret;

	if (!FUNC1(sb, uopt->blocksize)) {
		if (!silent)
			FUNC6(sb, "Bad block size\n");
		return -EINVAL;
	}
	sbi->s_last_block = uopt->lastblock;
	if (!uopt->novrs) {
		/* Check that it is NSR02 compliant */
		nsr = FUNC2(sb);
		if (!nsr) {
			if (!silent)
				FUNC6(sb, "No VRS found\n");
			return -EINVAL;
		}
		if (nsr == -1)
			FUNC3("Failed to read sector at offset %d. "
				  "Assuming open disc. Skipping validity "
				  "check\n", VSD_FIRST_SECTOR_OFFSET);
		if (!sbi->s_last_block)
			sbi->s_last_block = FUNC5(sb);
	} else {
		FUNC3("Validity check skipped because of novrs option\n");
	}

	/* Look for anchor block and load Volume Descriptor Sequence */
	sbi->s_anchor = uopt->anchor;
	ret = FUNC4(sb, fileset);
	if (ret < 0) {
		if (!silent && ret == -EAGAIN)
			FUNC6(sb, "No anchor found\n");
		return ret;
	}
	return 0;
}