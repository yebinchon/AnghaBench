#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_blocknr; int /*<<< orphan*/  (* b_end_io ) (struct buffer_head*,int) ;int /*<<< orphan*/  b_bdev; struct buffer_head* b_this_page; } ;
typedef  unsigned char sector_t ;
typedef  unsigned char s64 ;
struct TYPE_13__ {unsigned char vcn; scalar_t__ length; } ;
typedef  TYPE_3__ runlist_element ;
struct TYPE_14__ {unsigned char cluster_size_bits; unsigned char cluster_size_mask; TYPE_8__* sb; } ;
typedef  TYPE_4__ ntfs_volume ;
struct TYPE_12__ {int /*<<< orphan*/  lock; TYPE_3__* rl; } ;
struct TYPE_15__ {unsigned int allocated_size; unsigned char initialized_size; TYPE_2__ runlist; int /*<<< orphan*/  type; int /*<<< orphan*/  mft_no; int /*<<< orphan*/  size_lock; TYPE_4__* vol; } ;
typedef  TYPE_5__ ntfs_inode ;
typedef  unsigned char loff_t ;
typedef  unsigned char VCN ;
struct TYPE_16__ {unsigned int s_blocksize; unsigned char s_blocksize_bits; int /*<<< orphan*/  s_bdev; } ;
struct TYPE_11__ {struct inode* host; } ;
typedef  unsigned int LCN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 unsigned int LCN_ENOENT ; 
 unsigned int LCN_HOLE ; 
 unsigned int LCN_RL_NOT_MAPPED ; 
 int MAX_BUF_PER_PAGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 unsigned char PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned int,char*,int) ; 
 int FUNC16 (TYPE_5__*,unsigned char) ; 
 unsigned int FUNC17 (TYPE_3__*,unsigned char) ; 
 struct buffer_head* FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct page*,int,unsigned int) ; 

__attribute__((used)) static int FUNC30(struct page *page)
{
	loff_t i_size;
	VCN vcn;
	LCN lcn;
	s64 init_size;
	struct inode *vi;
	ntfs_inode *ni;
	ntfs_volume *vol;
	runlist_element *rl;
	struct buffer_head *bh, *head, *arr[MAX_BUF_PER_PAGE];
	sector_t iblock, lblock, zblock;
	unsigned long flags;
	unsigned int blocksize, vcn_ofs;
	int i, nr;
	unsigned char blocksize_bits;

	vi = page->mapping->host;
	ni = FUNC2(vi);
	vol = ni->vol;

	/* $MFT/$DATA must have its complete runlist in memory at all times. */
	FUNC0(!ni->runlist.rl && !ni->mft_no && !FUNC1(ni));

	blocksize = vol->sb->s_blocksize;
	blocksize_bits = vol->sb->s_blocksize_bits;

	if (!FUNC19(page)) {
		FUNC9(page, blocksize, 0);
		if (FUNC26(!FUNC19(page))) {
			FUNC27(page);
			return -ENOMEM;
		}
	}
	bh = head = FUNC18(page);
	FUNC0(!bh);

	/*
	 * We may be racing with truncate.  To avoid some of the problems we
	 * now take a snapshot of the various sizes and use those for the whole
	 * of the function.  In case of an extending truncate it just means we
	 * may leave some buffers unmapped which are now allocated.  This is
	 * not a problem since these buffers will just get mapped when a write
	 * occurs.  In case of a shrinking truncate, we will detect this later
	 * on due to the runlist being incomplete and if the page is being
	 * fully truncated, truncate will throw it away as soon as we unlock
	 * it so no need to worry what we do with it.
	 */
	iblock = (s64)page->index << (PAGE_SHIFT - blocksize_bits);
	FUNC20(&ni->size_lock, flags);
	lblock = (ni->allocated_size + blocksize - 1) >> blocksize_bits;
	init_size = ni->initialized_size;
	i_size = FUNC11(vi);
	FUNC21(&ni->size_lock, flags);
	if (FUNC26(init_size > i_size)) {
		/* Race with shrinking truncate. */
		init_size = i_size;
	}
	zblock = (init_size + blocksize - 1) >> blocksize_bits;

	/* Loop through all the buffers in the page. */
	rl = NULL;
	nr = i = 0;
	do {
		int err = 0;

		if (FUNC26(FUNC7(bh)))
			continue;
		if (FUNC26(FUNC6(bh))) {
			arr[nr++] = bh;
			continue;
		}
		bh->b_bdev = vol->sb->s_bdev;
		/* Is the block within the allowed limits? */
		if (iblock < lblock) {
			bool is_retry = false;

			/* Convert iblock into corresponding vcn and offset. */
			vcn = (VCN)iblock << blocksize_bits >>
					vol->cluster_size_bits;
			vcn_ofs = ((VCN)iblock << blocksize_bits) &
					vol->cluster_size_mask;
			if (!rl) {
lock_retry_remap:
				FUNC10(&ni->runlist.lock);
				rl = ni->runlist.rl;
			}
			if (FUNC12(rl != NULL)) {
				/* Seek to element containing target vcn. */
				while (rl->length && rl[1].vcn <= vcn)
					rl++;
				lcn = FUNC17(rl, vcn);
			} else
				lcn = LCN_RL_NOT_MAPPED;
			/* Successful remap. */
			if (lcn >= 0) {
				/* Setup buffer head to correct block. */
				bh->b_blocknr = ((lcn << vol->cluster_size_bits)
						+ vcn_ofs) >> blocksize_bits;
				FUNC23(bh);
				/* Only read initialized data blocks. */
				if (iblock < zblock) {
					arr[nr++] = bh;
					continue;
				}
				/* Fully non-initialized data block, zero it. */
				goto handle_zblock;
			}
			/* It is a hole, need to zero it. */
			if (lcn == LCN_HOLE)
				goto handle_hole;
			/* If first try and runlist unmapped, map and retry. */
			if (!is_retry && lcn == LCN_RL_NOT_MAPPED) {
				is_retry = true;
				/*
				 * Attempt to map runlist, dropping lock for
				 * the duration.
				 */
				FUNC28(&ni->runlist.lock);
				err = FUNC16(ni, vcn);
				if (FUNC12(!err))
					goto lock_retry_remap;
				rl = NULL;
			} else if (!rl)
				FUNC28(&ni->runlist.lock);
			/*
			 * If buffer is outside the runlist, treat it as a
			 * hole.  This can happen due to concurrent truncate
			 * for example.
			 */
			if (err == -ENOENT || lcn == LCN_ENOENT) {
				err = 0;
				goto handle_hole;
			}
			/* Hard error, zero out region. */
			if (!err)
				err = -EIO;
			bh->b_blocknr = -1;
			FUNC4(page);
			FUNC15(vol->sb, "Failed to read from inode 0x%lx, "
					"attribute type 0x%x, vcn 0x%llx, "
					"offset 0x%x because its location on "
					"disk could not be determined%s "
					"(error code %i).", ni->mft_no,
					ni->type, (unsigned long long)vcn,
					vcn_ofs, is_retry ? " even after "
					"retrying" : "", err);
		}
		/*
		 * Either iblock was outside lblock limits or
		 * ntfs_rl_vcn_to_lcn() returned error.  Just zero that portion
		 * of the page and set the buffer uptodate.
		 */
handle_hole:
		bh->b_blocknr = -1UL;
		FUNC8(bh);
handle_zblock:
		FUNC29(page, i * blocksize, blocksize);
		if (FUNC12(!err))
			FUNC24(bh);
	} while (i++, iblock++, (bh = bh->b_this_page) != head);

	/* Release the lock if we took it. */
	if (rl)
		FUNC28(&ni->runlist.lock);

	/* Check we have at least one buffer ready for i/o. */
	if (nr) {
		struct buffer_head *tbh;

		/* Lock the buffers. */
		for (i = 0; i < nr; i++) {
			tbh = arr[i];
			FUNC13(tbh);
			tbh->b_end_io = ntfs_end_buffer_async_read;
			FUNC22(tbh);
		}
		/* Finally, start i/o on the buffers. */
		for (i = 0; i < nr; i++) {
			tbh = arr[i];
			if (FUNC12(!FUNC7(tbh)))
				FUNC25(REQ_OP_READ, 0, tbh);
			else
				FUNC14(tbh, 1);
		}
		return 0;
	}
	/* No i/o was scheduled on any of the buffers. */
	if (FUNC12(!FUNC3(page)))
		FUNC5(page);
	else /* Signal synchronous i/o error. */
		nr = -EIO;
	FUNC27(page);
	return nr;
}