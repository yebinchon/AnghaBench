#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_super {unsigned long long max_slots; TYPE_1__* sb; } ;
struct ocfs2_slot_info {unsigned long long si_blocks; int si_slots_per_block; struct buffer_head** si_bh; TYPE_2__* si_inode; scalar_t__ si_extended; } ;
struct ocfs2_extended_slot {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_5__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  OCFS2_BH_IGNORE_CACHE ; 
 unsigned long long UINT_MAX ; 
 struct buffer_head** FUNC2 (unsigned long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC5 (TYPE_2__*,unsigned int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,struct buffer_head**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ocfs2_super*,TYPE_2__*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct ocfs2_super *osb,
				  struct ocfs2_slot_info *si)
{
	int status = 0;
	u64 blkno;
	unsigned long long blocks, bytes = 0;
	unsigned int i;
	struct buffer_head *bh;

	status = FUNC7(osb, si->si_inode, &bytes);
	if (status)
		goto bail;

	blocks = FUNC4(si->si_inode->i_sb, bytes);
	FUNC0(blocks > UINT_MAX);
	si->si_blocks = blocks;
	if (!si->si_blocks)
		goto bail;

	if (si->si_extended)
		si->si_slots_per_block =
			(osb->sb->s_blocksize /
			 sizeof(struct ocfs2_extended_slot));
	else
		si->si_slots_per_block = osb->sb->s_blocksize / sizeof(__le16);

	/* The size checks above should ensure this */
	FUNC0((osb->max_slots / si->si_slots_per_block) > blocks);

	FUNC8(bytes, si->si_blocks);

	si->si_bh = FUNC2(si->si_blocks, sizeof(struct buffer_head *),
			    GFP_KERNEL);
	if (!si->si_bh) {
		status = -ENOMEM;
		FUNC3(status);
		goto bail;
	}

	for (i = 0; i < si->si_blocks; i++) {
		status = FUNC5(si->si_inode, i,
						     &blkno, NULL, NULL);
		if (status < 0) {
			FUNC3(status);
			goto bail;
		}

		FUNC9((unsigned long long)blkno, i);

		bh = NULL;  /* Acquire a fresh bh */
		status = FUNC6(FUNC1(si->si_inode), blkno,
					   1, &bh, OCFS2_BH_IGNORE_CACHE, NULL);
		if (status < 0) {
			FUNC3(status);
			goto bail;
		}

		si->si_bh[i] = bh;
	}

bail:
	return status;
}