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
typedef  unsigned int u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_5__ {unsigned int mft_record_size_bits; unsigned int mft_record_size; int /*<<< orphan*/  sb; struct inode* mft_ino; } ;
typedef  TYPE_1__ ntfs_volume ;
struct TYPE_6__ {unsigned int mft_no; unsigned int page_ofs; struct page* page; TYPE_1__* vol; } ;
typedef  TYPE_2__ ntfs_inode ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  le32 ;
typedef  void MFT_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 void* FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static inline MFT_RECORD *FUNC12(ntfs_inode *ni)
{
	loff_t i_size;
	ntfs_volume *vol = ni->vol;
	struct inode *mft_vi = vol->mft_ino;
	struct page *page;
	unsigned long index, end_index;
	unsigned ofs;

	FUNC0(ni->page);
	/*
	 * The index into the page cache and the offset within the page cache
	 * page of the wanted mft record. FIXME: We need to check for
	 * overflowing the unsigned long, but I don't think we would ever get
	 * here if the volume was that big...
	 */
	index = (u64)ni->mft_no << vol->mft_record_size_bits >>
			PAGE_SHIFT;
	ofs = (ni->mft_no << vol->mft_record_size_bits) & ~PAGE_MASK;

	i_size = FUNC4(mft_vi);
	/* The maximum valid index into the page cache for $MFT's data. */
	end_index = i_size >> PAGE_SHIFT;

	/* If the wanted index is out of bounds the mft record doesn't exist. */
	if (FUNC11(index >= end_index)) {
		if (index > end_index || (i_size & ~PAGE_MASK) < ofs +
				vol->mft_record_size) {
			page = FUNC1(-ENOENT);
			FUNC6(vol->sb, "Attempt to read mft record 0x%lx, "
					"which is beyond the end of the mft.  "
					"This is probably a bug in the ntfs "
					"driver.", ni->mft_no);
			goto err_out;
		}
	}
	/* Read, map, and pin the page. */
	page = FUNC8(mft_vi->i_mapping, index);
	if (!FUNC2(page)) {
		/* Catch multi sector transfer fixup errors. */
		if (FUNC5(FUNC7((le32*)(FUNC10(page) +
				ofs)))) {
			ni->page = page;
			ni->page_ofs = ofs;
			return FUNC10(page) + ofs;
		}
		FUNC6(vol->sb, "Mft record 0x%lx is corrupt.  "
				"Run chkdsk.", ni->mft_no);
		FUNC9(page);
		page = FUNC1(-EIO);
		FUNC3(vol);
	}
err_out:
	ni->page = NULL;
	ni->page_ofs = 0;
	return (void*)page;
}