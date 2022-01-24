#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  mapping; } ;
struct iomap_readpage_ctx {int cur_page_in_bio; TYPE_2__* bio; scalar_t__ is_readahead; struct page* cur_page; } ;
struct iomap_page {int /*<<< orphan*/  read_count; } ;
struct iomap {scalar_t__ type; int /*<<< orphan*/  bdev; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ loff_t ;
typedef  int gfp_t ;
struct TYPE_9__ {scalar_t__ bi_sector; } ;
struct TYPE_10__ {int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; int /*<<< orphan*/  bi_opf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IOMAP_INLINE ; 
 scalar_t__ IOMAP_MAPPED ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct page*,unsigned int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct page*,unsigned int,unsigned int) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iomap_page*,scalar_t__*,scalar_t__,unsigned int*,unsigned int*) ; 
 struct iomap_page* FUNC10 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  iomap_read_end_io ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct page*,struct iomap*) ; 
 scalar_t__ FUNC12 (struct iomap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,unsigned int,unsigned int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static loff_t
FUNC18(struct inode *inode, loff_t pos, loff_t length, void *data,
		struct iomap *iomap)
{
	struct iomap_readpage_ctx *ctx = data;
	struct page *page = ctx->cur_page;
	struct iomap_page *iop = FUNC10(inode, page);
	bool same_page = false, is_contig = false;
	loff_t orig_pos = pos;
	unsigned poff, plen;
	sector_t sector;

	if (iomap->type == IOMAP_INLINE) {
		FUNC0(pos);
		FUNC11(inode, page, iomap);
		return PAGE_SIZE;
	}

	/* zero post-eof blocks as the page may be mapped */
	FUNC9(inode, iop, &pos, length, &poff, &plen);
	if (plen == 0)
		goto done;

	if (iomap->type != IOMAP_MAPPED || pos >= FUNC8(inode)) {
		FUNC17(page, poff, plen);
		FUNC13(page, poff, plen);
		goto done;
	}

	ctx->cur_page_in_bio = true;

	/*
	 * Try to merge into a previous segment if we can.
	 */
	sector = FUNC12(iomap, pos);
	if (ctx->bio && FUNC5(ctx->bio) == sector)
		is_contig = true;

	if (is_contig &&
	    FUNC1(ctx->bio, page, plen, poff, &same_page)) {
		if (!same_page && iop)
			FUNC2(&iop->read_count);
		goto done;
	}

	/*
	 * If we start a new segment we need to increase the read count, and we
	 * need to do so before submitting any previous full bio to make sure
	 * that we don't prematurely unlock the page.
	 */
	if (iop)
		FUNC2(&iop->read_count);

	if (!ctx->bio || !is_contig || FUNC6(ctx->bio, plen)) {
		gfp_t gfp = FUNC14(page->mapping, GFP_KERNEL);
		int nr_vecs = (length + PAGE_SIZE - 1) >> PAGE_SHIFT;

		if (ctx->bio)
			FUNC16(ctx->bio);

		if (ctx->is_readahead) /* same as readahead_gfp_mask */
			gfp |= __GFP_NORETRY | __GFP_NOWARN;
		ctx->bio = FUNC4(gfp, FUNC15(BIO_MAX_PAGES, nr_vecs));
		ctx->bio->bi_opf = REQ_OP_READ;
		if (ctx->is_readahead)
			ctx->bio->bi_opf |= REQ_RAHEAD;
		ctx->bio->bi_iter.bi_sector = sector;
		FUNC7(ctx->bio, iomap->bdev);
		ctx->bio->bi_end_io = iomap_read_end_io;
	}

	FUNC3(ctx->bio, page, plen, poff);
done:
	/*
	 * Move the caller beyond our range so that it keeps making progress.
	 * For that we have to include any leading non-uptodate ranges, but
	 * we can skip trailing ones as they will be handled in the next
	 * iteration.
	 */
	return pos - orig_pos + plen;
}