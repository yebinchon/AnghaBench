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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {scalar_t__ e_flags; int /*<<< orphan*/  e_blkno; } ;
typedef  enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;

/* Variables and functions */
 int CONTIG_LEFT ; 
 int CONTIG_NONE ; 
 int CONTIG_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct super_block*,struct ocfs2_extent_rec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ; 

__attribute__((used)) static enum ocfs2_contig_type
	FUNC3(struct super_block *sb,
				struct ocfs2_extent_rec *ext,
				struct ocfs2_extent_rec *insert_rec)
{
	u64 blkno = FUNC0(insert_rec->e_blkno);

	/*
	 * Refuse to coalesce extent records with different flag
	 * fields - we don't want to mix unwritten extents with user
	 * data.
	 */
	if (ext->e_flags != insert_rec->e_flags)
		return CONTIG_NONE;

	if (FUNC2(ext, insert_rec) &&
	    FUNC1(sb, ext, blkno))
			return CONTIG_RIGHT;

	blkno = FUNC0(ext->e_blkno);
	if (FUNC2(insert_rec, ext) &&
	    FUNC1(sb, insert_rec, blkno))
		return CONTIG_LEFT;

	return CONTIG_NONE;
}