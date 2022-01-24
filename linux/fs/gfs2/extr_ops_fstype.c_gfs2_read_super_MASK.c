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
struct super_block {int s_blocksize; int /*<<< orphan*/  s_bdev; } ;
struct page {int dummy; } ;
struct gfs2_sbd {struct super_block* sd_vfs; } ;
struct gfs2_sb {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {struct page* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_bio_io_page ; 
 int FUNC10 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*,struct gfs2_sb*) ; 
 struct gfs2_sb* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct bio*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 

__attribute__((used)) static int FUNC18(struct gfs2_sbd *sdp, sector_t sector, int silent)
{
	struct super_block *sb = sdp->sd_vfs;
	struct gfs2_sb *p;
	struct page *page;
	struct bio *bio;

	page = FUNC4(GFP_NOFS);
	if (FUNC16(!page))
		return -ENOMEM;

	FUNC1(page);
	FUNC0(page);
	FUNC14(page);

	bio = FUNC6(GFP_NOFS, 1);
	bio->bi_iter.bi_sector = sector * (sb->s_blocksize >> 9);
	FUNC8(bio, sb->s_bdev);
	FUNC5(bio, page, PAGE_SIZE, 0);

	bio->bi_end_io = end_bio_io_page;
	bio->bi_private = page;
	FUNC9(bio, REQ_OP_READ, REQ_META);
	FUNC15(bio);
	FUNC17(page);
	FUNC7(bio);
	if (!FUNC2(page)) {
		FUNC3(page);
		return -EIO;
	}
	p = FUNC12(page);
	FUNC11(sdp, p);
	FUNC13(page);
	FUNC3(page);
	return FUNC10(sdp, silent);
}