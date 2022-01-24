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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_io_info {struct page* encrypted_page; int /*<<< orphan*/  old_blkaddr; int /*<<< orphan*/  sbi; TYPE_2__* page; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {TYPE_1__* mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct f2fs_io_info *fio)
{
	struct inode *inode = fio->page->mapping->host;
	struct page *mpage;
	gfp_t gfp_flags = GFP_NOFS;

	if (!FUNC5(inode))
		return 0;

	/* wait for GCed page writeback via META_MAPPING */
	FUNC8(inode, fio->old_blkaddr);

retry_encrypt:
	fio->encrypted_page = FUNC10(fio->page,
							       PAGE_SIZE, 0,
							       gfp_flags);
	if (FUNC0(fio->encrypted_page)) {
		/* flush pending IOs and wait for a while in the ENOMEM case */
		if (FUNC2(fio->encrypted_page) == -ENOMEM) {
			FUNC6(fio->sbi);
			FUNC4(BLK_RW_ASYNC, HZ/50);
			gfp_flags |= __GFP_NOFAIL;
			goto retry_encrypt;
		}
		return FUNC2(fio->encrypted_page);
	}

	mpage = FUNC9(FUNC1(fio->sbi), fio->old_blkaddr);
	if (mpage) {
		if (FUNC3(mpage))
			FUNC11(FUNC12(mpage),
				FUNC12(fio->encrypted_page), PAGE_SIZE);
		FUNC7(mpage, 1);
	}
	return 0;
}