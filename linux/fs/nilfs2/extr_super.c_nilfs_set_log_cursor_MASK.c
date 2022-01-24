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
struct the_nilfs {int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_last_cno; int /*<<< orphan*/  ns_last_pseg; int /*<<< orphan*/  ns_last_seq; } ;
struct nilfs_super_block {void* s_last_cno; void* s_last_pseg; void* s_last_seq; void* s_free_blocks_count; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nilfs_super_block *sbp,
			  struct the_nilfs *nilfs)
{
	sector_t nfreeblocks;

	/* nilfs->ns_sem must be locked by the caller. */
	FUNC1(nilfs, &nfreeblocks);
	sbp->s_free_blocks_count = FUNC0(nfreeblocks);

	FUNC2(&nilfs->ns_last_segment_lock);
	sbp->s_last_seq = FUNC0(nilfs->ns_last_seq);
	sbp->s_last_pseg = FUNC0(nilfs->ns_last_pseg);
	sbp->s_last_cno = FUNC0(nilfs->ns_last_cno);
	FUNC3(&nilfs->ns_last_segment_lock);
}