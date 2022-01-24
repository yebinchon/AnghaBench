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
typedef  int /*<<< orphan*/  u64 ;
struct nilfs_segment_usage {scalar_t__ su_flags; scalar_t__ su_nblocks; int /*<<< orphan*/  su_lastmod; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int ncleansegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NILFS_SEGMENT_USAGE_DIRTY ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct nilfs_segment_usage*) ; 
 int FUNC9 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC10 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 

void FUNC12(struct inode *sufile, __u64 segnum,
			   struct buffer_head *header_bh,
			   struct buffer_head *su_bh)
{
	struct nilfs_segment_usage *su;
	void *kaddr;
	int clean, dirty;

	kaddr = FUNC4(su_bh->b_page);
	su = FUNC10(sufile, segnum, su_bh, kaddr);
	if (su->su_flags == FUNC2(FUNC0(NILFS_SEGMENT_USAGE_DIRTY)) &&
	    su->su_nblocks == FUNC2(0)) {
		FUNC5(kaddr);
		return;
	}
	clean = FUNC8(su);
	dirty = FUNC9(su);

	/* make the segment garbage */
	su->su_lastmod = FUNC3(0);
	su->su_nblocks = FUNC2(0);
	su->su_flags = FUNC2(FUNC0(NILFS_SEGMENT_USAGE_DIRTY));
	FUNC5(kaddr);

	FUNC11(header_bh, clean ? (u64)-1 : 0, dirty ? 0 : 1);
	FUNC1(sufile)->ncleansegs -= clean;

	FUNC6(su_bh);
	FUNC7(sufile);
}