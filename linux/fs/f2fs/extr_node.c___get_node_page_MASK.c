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
struct page {scalar_t__ mapping; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EFSBADCRC ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct page* FUNC1 (int) ; 
 int LOCKED_PAGE ; 
 int /*<<< orphan*/  MAX_RA_NODE ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,scalar_t__) ; 
 struct page* FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static struct page *FUNC18(struct f2fs_sb_info *sbi, pgoff_t nid,
					struct page *parent, int start)
{
	struct page *page;
	int err;

	if (!nid)
		return FUNC1(-ENOENT);
	if (FUNC5(sbi, nid))
		return FUNC1(-EINVAL);
repeat:
	page = FUNC6(FUNC2(sbi), nid, false);
	if (!page)
		return FUNC1(-ENOMEM);

	err = FUNC16(page, 0);
	if (err < 0) {
		FUNC8(page, 1);
		return FUNC1(err);
	} else if (err == LOCKED_PAGE) {
		err = 0;
		goto page_hit;
	}

	if (parent)
		FUNC9(parent, start + 1, MAX_RA_NODE);

	FUNC12(page);

	if (FUNC17(page->mapping != FUNC2(sbi))) {
		FUNC8(page, 1);
		goto repeat;
	}

	if (FUNC17(!FUNC3(page))) {
		err = -EIO;
		goto out_err;
	}

	if (!FUNC7(sbi, page)) {
		err = -EFSBADCRC;
		goto out_err;
	}
page_hit:
	if(FUNC17(nid != FUNC14(page))) {
		FUNC10(sbi, "inconsistent node block, nid:%lu, node_footer[nid:%u,ino:%u,ofs:%u,cpver:%llu,blkaddr:%u]",
			  nid, FUNC14(page), FUNC11(page),
			  FUNC15(page), FUNC4(page),
			  FUNC13(page));
		err = -EINVAL;
out_err:
		FUNC0(page);
		FUNC8(page, 1);
		return FUNC1(err);
	}
	return page;
}