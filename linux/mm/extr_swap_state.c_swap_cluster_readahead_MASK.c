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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_fault {unsigned long address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int dummy; } ;
struct swap_info_struct {int flags; unsigned long max; TYPE_2__* swap_file; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_RA ; 
 int SWP_BLKDEV ; 
 int SWP_FS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

struct page *FUNC16(swp_entry_t entry, gfp_t gfp_mask,
				struct vm_fault *vmf)
{
	struct page *page;
	unsigned long entry_offset = FUNC13(entry);
	unsigned long offset = entry_offset;
	unsigned long start_offset, end_offset;
	unsigned long mask;
	struct swap_info_struct *si = FUNC14(entry);
	struct blk_plug plug;
	bool do_poll = true, page_allocated;
	struct vm_area_struct *vma = vmf->vma;
	unsigned long addr = vmf->address;

	mask = FUNC11(offset) - 1;
	if (!mask)
		goto skip;

	/* Test swap type to make sure the dereference is safe */
	if (FUNC6(si->flags & (SWP_BLKDEV | SWP_FS))) {
		struct inode *inode = si->swap_file->f_mapping->host;
		if (FUNC5(inode))
			goto skip;
	}

	do_poll = false;
	/* Read a page_cluster sized and aligned cluster around offset. */
	start_offset = offset & ~mask;
	end_offset = offset | mask;
	if (!start_offset)	/* First page is swap header. */
		start_offset++;
	if (end_offset >= si->max)
		end_offset = si->max - 1;

	FUNC3(&plug);
	for (offset = start_offset; offset <= end_offset ; offset++) {
		/* Ok, do the async read-ahead now */
		page = FUNC1(
			FUNC12(FUNC15(entry), offset),
			gfp_mask, vma, addr, &page_allocated);
		if (!page)
			continue;
		if (page_allocated) {
			FUNC10(page, false);
			if (offset != entry_offset) {
				FUNC0(page);
				FUNC4(SWAP_RA);
			}
		}
		FUNC8(page);
	}
	FUNC2(&plug);

	FUNC7();	/* Push any new pages onto the LRU now */
skip:
	return FUNC9(entry, gfp_mask, vma, addr, do_poll);
}