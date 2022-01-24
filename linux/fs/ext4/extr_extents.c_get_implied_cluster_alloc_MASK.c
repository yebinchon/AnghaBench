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
struct super_block {int dummy; } ;
struct ext4_sb_info {scalar_t__ s_cluster_ratio; } ;
struct ext4_map_blocks {scalar_t__ m_lblk; void* m_len; scalar_t__ m_pblk; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int dummy; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  unsigned short ext4_fsblk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ext4_sb_info*,unsigned short) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 unsigned short FUNC4 (struct ext4_extent*) ; 
 scalar_t__ FUNC5 (struct ext4_ext_path*) ; 
 unsigned short FUNC6 (struct ext4_extent*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct ext4_map_blocks*,int) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
				     struct ext4_map_blocks *map,
				     struct ext4_extent *ex,
				     struct ext4_ext_path *path)
{
	struct ext4_sb_info *sbi = FUNC3(sb);
	ext4_lblk_t c_offset = FUNC1(sbi, map->m_lblk);
	ext4_lblk_t ex_cluster_start, ex_cluster_end;
	ext4_lblk_t rr_cluster_start;
	ext4_lblk_t ee_block = FUNC7(ex->ee_block);
	ext4_fsblk_t ee_start = FUNC6(ex);
	unsigned short ee_len = FUNC4(ex);

	/* The extent passed in that we are trying to match */
	ex_cluster_start = FUNC0(sbi, ee_block);
	ex_cluster_end = FUNC0(sbi, ee_block + ee_len - 1);

	/* The requested region passed into ext4_map_blocks() */
	rr_cluster_start = FUNC0(sbi, map->m_lblk);

	if ((rr_cluster_start == ex_cluster_end) ||
	    (rr_cluster_start == ex_cluster_start)) {
		if (rr_cluster_start == ex_cluster_end)
			ee_start += ee_len - 1;
		map->m_pblk = FUNC2(sbi, ee_start) + c_offset;
		map->m_len = FUNC8(map->m_len,
				 (unsigned) sbi->s_cluster_ratio - c_offset);
		/*
		 * Check for and handle this case:
		 *
		 *   |--------- cluster # N-------------|
		 *		       |------- extent ----|
		 *	   |--- requested region ---|
		 *	   |===========|
		 */

		if (map->m_lblk < ee_block)
			map->m_len = FUNC8(map->m_len, ee_block - map->m_lblk);

		/*
		 * Check for the case where there is already another allocated
		 * block to the right of 'ex' but before the end of the cluster.
		 *
		 *          |------------- cluster # N-------------|
		 * |----- ex -----|                  |---- ex_right ----|
		 *                  |------ requested region ------|
		 *                  |================|
		 */
		if (map->m_lblk > ee_block) {
			ext4_lblk_t next = FUNC5(path);
			map->m_len = FUNC8(map->m_len, next - map->m_lblk);
		}

		FUNC9(sb, map, 1);
		return 1;
	}

	FUNC9(sb, map, 0);
	return 0;
}