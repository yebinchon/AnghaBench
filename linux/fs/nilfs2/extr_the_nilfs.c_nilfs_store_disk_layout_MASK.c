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
struct the_nilfs {scalar_t__ ns_sbsize; scalar_t__ ns_inode_size; scalar_t__ ns_blocksize; scalar_t__ ns_blocks_per_segment; int ns_r_segments_percentage; scalar_t__ ns_crc_seed; int /*<<< orphan*/  ns_sb; int /*<<< orphan*/  ns_first_data_block; scalar_t__ ns_first_ino; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_crc_seed; int /*<<< orphan*/  s_nsegments; int /*<<< orphan*/  s_r_segments_percentage; int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_blocks_per_segment; int /*<<< orphan*/  s_first_ino; int /*<<< orphan*/  s_inode_size; int /*<<< orphan*/  s_bytes; int /*<<< orphan*/  s_minor_rev_level; int /*<<< orphan*/  s_rev_level; } ;

/* Variables and functions */
 scalar_t__ BLOCK_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  NILFS_CURRENT_REV ; 
 int /*<<< orphan*/  NILFS_MINOR_REV ; 
 scalar_t__ NILFS_MIN_INODE_SIZE ; 
 scalar_t__ NILFS_MIN_SUPP_REV ; 
 scalar_t__ NILFS_SEG_MIN_BLOCKS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct the_nilfs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct the_nilfs *nilfs,
				   struct nilfs_super_block *sbp)
{
	if (FUNC1(sbp->s_rev_level) < NILFS_MIN_SUPP_REV) {
		FUNC3(nilfs->ns_sb, KERN_ERR,
			  "unsupported revision (superblock rev.=%d.%d, current rev.=%d.%d). Please check the version of mkfs.nilfs(2).",
			  FUNC1(sbp->s_rev_level),
			  FUNC0(sbp->s_minor_rev_level),
			  NILFS_CURRENT_REV, NILFS_MINOR_REV);
		return -EINVAL;
	}
	nilfs->ns_sbsize = FUNC0(sbp->s_bytes);
	if (nilfs->ns_sbsize > BLOCK_SIZE)
		return -EINVAL;

	nilfs->ns_inode_size = FUNC0(sbp->s_inode_size);
	if (nilfs->ns_inode_size > nilfs->ns_blocksize) {
		FUNC3(nilfs->ns_sb, KERN_ERR,
			  "too large inode size: %d bytes",
			  nilfs->ns_inode_size);
		return -EINVAL;
	} else if (nilfs->ns_inode_size < NILFS_MIN_INODE_SIZE) {
		FUNC3(nilfs->ns_sb, KERN_ERR,
			  "too small inode size: %d bytes",
			  nilfs->ns_inode_size);
		return -EINVAL;
	}

	nilfs->ns_first_ino = FUNC1(sbp->s_first_ino);

	nilfs->ns_blocks_per_segment = FUNC1(sbp->s_blocks_per_segment);
	if (nilfs->ns_blocks_per_segment < NILFS_SEG_MIN_BLOCKS) {
		FUNC3(nilfs->ns_sb, KERN_ERR,
			  "too short segment: %lu blocks",
			  nilfs->ns_blocks_per_segment);
		return -EINVAL;
	}

	nilfs->ns_first_data_block = FUNC2(sbp->s_first_data_block);
	nilfs->ns_r_segments_percentage =
		FUNC1(sbp->s_r_segments_percentage);
	if (nilfs->ns_r_segments_percentage < 1 ||
	    nilfs->ns_r_segments_percentage > 99) {
		FUNC3(nilfs->ns_sb, KERN_ERR,
			  "invalid reserved segments percentage: %lu",
			  nilfs->ns_r_segments_percentage);
		return -EINVAL;
	}

	FUNC4(nilfs, FUNC2(sbp->s_nsegments));
	nilfs->ns_crc_seed = FUNC1(sbp->s_crc_seed);
	return 0;
}