#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct page {int dummy; } ;
struct TYPE_4__ {unsigned int sb_bsize_shift; int /*<<< orphan*/  sb_bsize; } ;
struct address_space {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_vfs; TYPE_2__ sd_sb; struct address_space sd_aspace; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;

/* Variables and functions */
 int FGP_ACCESSED ; 
 int FGP_LOCK ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct address_space*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct address_space* FUNC4 (struct gfs2_glock*) ; 
 struct page* FUNC5 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,unsigned int) ; 
 struct buffer_head* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

struct buffer_head *FUNC12(struct gfs2_glock *gl, u64 blkno, int create)
{
	struct address_space *mapping = FUNC4(gl);
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct page *page;
	struct buffer_head *bh;
	unsigned int shift;
	unsigned long index;
	unsigned int bufnum;

	if (mapping == NULL)
		mapping = &sdp->sd_aspace;

	shift = PAGE_SHIFT - sdp->sd_sb.sb_bsize_shift;
	index = blkno >> shift;             /* convert block to page */
	bufnum = blkno - (index << shift);  /* block buf index within page */

	if (create) {
		for (;;) {
			page = FUNC5(mapping, index);
			if (page)
				break;
			FUNC11();
		}
	} else {
		page = FUNC2(mapping, index,
						FGP_LOCK|FGP_ACCESSED);
		if (!page)
			return NULL;
	}

	if (!FUNC8(page))
		FUNC1(page, sdp->sd_sb.sb_bsize, 0);

	/* Locate header for our buffer within our page */
	for (bh = FUNC7(page); bufnum--; bh = bh->b_this_page)
		/* Do nothing */;
	FUNC3(bh);

	if (!FUNC0(bh))
		FUNC6(bh, sdp->sd_vfs, blkno);

	FUNC10(page);
	FUNC9(page);

	return bh;
}