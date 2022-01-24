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
struct page {struct address_space* mapping; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_ail_lock; } ;
struct gfs2_bufdata {struct buffer_head* bd_bh; int /*<<< orphan*/  bd_list; scalar_t__ bd_tr; } ;
struct buffer_head {struct buffer_head* b_this_page; struct gfs2_bufdata* b_private; int /*<<< orphan*/  b_count; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  gfs2_bufdata_cachep ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*) ; 
 struct gfs2_sbd* FUNC7 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct page*) ; 

int FUNC16(struct page *page, gfp_t gfp_mask)
{
	struct address_space *mapping = page->mapping;
	struct gfs2_sbd *sdp = FUNC7(mapping);
	struct buffer_head *bh, *head;
	struct gfs2_bufdata *bd;

	if (!FUNC12(page))
		return 0;

	/*
	 * From xfs_vm_releasepage: mm accommodates an old ext3 case where
	 * clean pages might not have had the dirty bit cleared.  Thus, it can
	 * send actual dirty pages to ->releasepage() via shrink_active_list().
	 *
	 * As a workaround, we skip pages that contain dirty buffers below.
	 * Once ->releasepage isn't called on dirty pages anymore, we can warn
	 * on dirty buffers like we used to here again.
	 */

	FUNC5(sdp);
	FUNC13(&sdp->sd_ail_lock);
	head = bh = FUNC11(page);
	do {
		if (FUNC1(&bh->b_count))
			goto cannot_release;
		bd = bh->b_private;
		if (bd && bd->bd_tr)
			goto cannot_release;
		if (FUNC2(bh) || FUNC0(FUNC3(bh)))
			goto cannot_release;
		bh = bh->b_this_page;
	} while(bh != head);
	FUNC14(&sdp->sd_ail_lock);

	head = bh = FUNC11(page);
	do {
		bd = bh->b_private;
		if (bd) {
			FUNC4(sdp, bd->bd_bh == bh);
			if (!FUNC10(&bd->bd_list))
				FUNC9(&bd->bd_list);
			bd->bd_bh = NULL;
			bh->b_private = NULL;
			FUNC8(gfs2_bufdata_cachep, bd);
		}

		bh = bh->b_this_page;
	} while (bh != head);
	FUNC6(sdp);

	return FUNC15(page);

cannot_release:
	FUNC14(&sdp->sd_ail_lock);
	FUNC6(sdp);
	return 0;
}