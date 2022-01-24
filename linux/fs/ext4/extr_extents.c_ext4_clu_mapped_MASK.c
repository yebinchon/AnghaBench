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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; int /*<<< orphan*/  p_block; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 scalar_t__ FUNC0 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct ext4_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,unsigned long,int,int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ext4_ext_path*) ; 
 int FUNC5 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC7 (struct ext4_extent*) ; 
 scalar_t__ FUNC8 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC9 (struct inode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct inode *inode, ext4_lblk_t lclu)
{
	struct ext4_sb_info *sbi = FUNC3(inode->i_sb);
	struct ext4_ext_path *path;
	int depth, mapped = 0, err = 0;
	struct ext4_extent *extent;
	ext4_lblk_t first_lblk, first_lclu, last_lclu;

	/* search for the extent closest to the first block in the cluster */
	path = FUNC9(inode, FUNC1(sbi, lclu), NULL, 0);
	if (FUNC4(path)) {
		err = FUNC5(path);
		path = NULL;
		goto out;
	}

	depth = FUNC10(inode);

	/*
	 * A consistent leaf must not be empty.  This situation is possible,
	 * though, _during_ tree modification, and it's why an assert can't
	 * be put in ext4_find_extent().
	 */
	if (FUNC13(path[depth].p_ext == NULL && depth != 0)) {
		FUNC2(inode,
		    "bad extent address - lblock: %lu, depth: %d, pblock: %lld",
				 (unsigned long) FUNC1(sbi, lclu),
				 depth, path[depth].p_block);
		err = -EFSCORRUPTED;
		goto out;
	}

	extent = path[depth].p_ext;

	/* can't be mapped if the extent tree is empty */
	if (extent == NULL)
		goto out;

	first_lblk = FUNC12(extent->ee_block);
	first_lclu = FUNC0(sbi, first_lblk);

	/*
	 * Three possible outcomes at this point - found extent spanning
	 * the target cluster, to the left of the target cluster, or to the
	 * right of the target cluster.  The first two cases are handled here.
	 * The last case indicates the target cluster is not mapped.
	 */
	if (lclu >= first_lclu) {
		last_lclu = FUNC0(sbi, first_lblk +
				     FUNC7(extent) - 1);
		if (lclu <= last_lclu) {
			mapped = 1;
		} else {
			first_lblk = FUNC8(path);
			first_lclu = FUNC0(sbi, first_lblk);
			if (lclu == first_lclu)
				mapped = 1;
		}
	}

out:
	FUNC6(path);
	FUNC11(path);

	return err ? err : mapped;
}