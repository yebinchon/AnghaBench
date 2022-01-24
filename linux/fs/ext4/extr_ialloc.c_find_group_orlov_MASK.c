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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int /*<<< orphan*/  s_root; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct orlov_stats {unsigned int free_inodes; int used_dirs; scalar_t__ free_clusters; } ;
struct inode {int dummy; } ;
struct ext4_sb_info {int s_log_groups_per_flex; int /*<<< orphan*/  s_hash_seed; int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeclusters_counter; int /*<<< orphan*/  s_freeinodes_counter; } ;
struct ext4_group_desc {int dummy; } ;
struct dx_hash_info {int hash; int /*<<< orphan*/  seed; int /*<<< orphan*/  hash_version; } ;
typedef  scalar_t__ ext4_grpblk_t ;
typedef  int ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int i_block_group; int i_last_alloc_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  DX_HASH_HALF_MD4 ; 
 scalar_t__ FUNC0 (struct ext4_sb_info*,unsigned int) ; 
 int FUNC1 (struct super_block*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_INODE_TOPDIR ; 
 struct ext4_sb_info* FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int FUNC8 (struct ext4_sb_info*) ; 
 unsigned int FUNC9 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC10 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct super_block*) ; 
 scalar_t__ FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dx_hash_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int,int,struct orlov_stats*) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct super_block *sb, struct inode *parent,
			    ext4_group_t *group, umode_t mode,
			    const struct qstr *qstr)
{
	ext4_group_t parent_group = FUNC2(parent)->i_block_group;
	struct ext4_sb_info *sbi = FUNC4(sb);
	ext4_group_t real_ngroups = FUNC11(sb);
	int inodes_per_group = FUNC3(sb);
	unsigned int freei, avefreei, grp_free;
	ext4_fsblk_t freeb, avefreec;
	unsigned int ndirs;
	int max_dirs, min_inodes;
	ext4_grpblk_t min_clusters;
	ext4_group_t i, grp, g, ngroups;
	struct ext4_group_desc *desc;
	struct orlov_stats stats;
	int flex_size = FUNC8(sbi);
	struct dx_hash_info hinfo;

	ngroups = real_ngroups;
	if (flex_size > 1) {
		ngroups = (real_ngroups + flex_size - 1) >>
			sbi->s_log_groups_per_flex;
		parent_group >>= sbi->s_log_groups_per_flex;
	}

	freei = FUNC15(&sbi->s_freeinodes_counter);
	avefreei = freei / ngroups;
	freeb = FUNC0(sbi,
		FUNC15(&sbi->s_freeclusters_counter));
	avefreec = freeb;
	FUNC7(avefreec, ngroups);
	ndirs = FUNC15(&sbi->s_dirs_counter);

	if (FUNC5(mode) &&
	    ((parent == FUNC6(sb->s_root)) ||
	     (FUNC12(parent, EXT4_INODE_TOPDIR)))) {
		int best_ndir = inodes_per_group;
		int ret = -1;

		if (qstr) {
			hinfo.hash_version = DX_HASH_HALF_MD4;
			hinfo.seed = sbi->s_hash_seed;
			FUNC13(parent, qstr->name, qstr->len, &hinfo);
			grp = hinfo.hash;
		} else
			grp = FUNC16();
		parent_group = (unsigned)grp % ngroups;
		for (i = 0; i < ngroups; i++) {
			g = (parent_group + i) % ngroups;
			FUNC14(sb, g, flex_size, &stats);
			if (!stats.free_inodes)
				continue;
			if (stats.used_dirs >= best_ndir)
				continue;
			if (stats.free_inodes < avefreei)
				continue;
			if (stats.free_clusters < avefreec)
				continue;
			grp = g;
			ret = 0;
			best_ndir = stats.used_dirs;
		}
		if (ret)
			goto fallback;
	found_flex_bg:
		if (flex_size == 1) {
			*group = grp;
			return 0;
		}

		/*
		 * We pack inodes at the beginning of the flexgroup's
		 * inode tables.  Block allocation decisions will do
		 * something similar, although regular files will
		 * start at 2nd block group of the flexgroup.  See
		 * ext4_ext_find_goal() and ext4_find_near().
		 */
		grp *= flex_size;
		for (i = 0; i < flex_size; i++) {
			if (grp+i >= real_ngroups)
				break;
			desc = FUNC10(sb, grp+i, NULL);
			if (desc && FUNC9(sb, desc)) {
				*group = grp+i;
				return 0;
			}
		}
		goto fallback;
	}

	max_dirs = ndirs / ngroups + inodes_per_group / 16;
	min_inodes = avefreei - inodes_per_group*flex_size / 4;
	if (min_inodes < 1)
		min_inodes = 1;
	min_clusters = avefreec - FUNC1(sb)*flex_size / 4;

	/*
	 * Start looking in the flex group where we last allocated an
	 * inode for this parent directory
	 */
	if (FUNC2(parent)->i_last_alloc_group != ~0) {
		parent_group = FUNC2(parent)->i_last_alloc_group;
		if (flex_size > 1)
			parent_group >>= sbi->s_log_groups_per_flex;
	}

	for (i = 0; i < ngroups; i++) {
		grp = (parent_group + i) % ngroups;
		FUNC14(sb, grp, flex_size, &stats);
		if (stats.used_dirs >= max_dirs)
			continue;
		if (stats.free_inodes < min_inodes)
			continue;
		if (stats.free_clusters < min_clusters)
			continue;
		goto found_flex_bg;
	}

fallback:
	ngroups = real_ngroups;
	avefreei = freei / ngroups;
fallback_retry:
	parent_group = FUNC2(parent)->i_block_group;
	for (i = 0; i < ngroups; i++) {
		grp = (parent_group + i) % ngroups;
		desc = FUNC10(sb, grp, NULL);
		if (desc) {
			grp_free = FUNC9(sb, desc);
			if (grp_free && grp_free >= avefreei) {
				*group = grp;
				return 0;
			}
		}
	}

	if (avefreei) {
		/*
		 * The free-inodes counter is approximate, and for really small
		 * filesystems the above test can fail to find any blockgroups
		 */
		avefreei = 0;
		goto fallback_retry;
	}

	return -1;
}