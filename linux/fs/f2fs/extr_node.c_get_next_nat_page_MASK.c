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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 struct f2fs_nm_info* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 struct page* FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC13(struct f2fs_sb_info *sbi, nid_t nid)
{
	struct page *src_page;
	struct page *dst_page;
	pgoff_t dst_off;
	void *src_addr;
	void *dst_addr;
	struct f2fs_nm_info *nm_i = FUNC1(sbi);

	dst_off = FUNC9(sbi, FUNC3(sbi, nid));

	/* get current nat block page with lock */
	src_page = FUNC7(sbi, nid);
	if (FUNC0(src_page))
		return src_page;
	dst_page = FUNC5(sbi, dst_off);
	FUNC4(sbi, FUNC2(src_page));

	src_addr = FUNC10(src_page);
	dst_addr = FUNC10(dst_page);
	FUNC8(dst_addr, src_addr, PAGE_SIZE);
	FUNC11(dst_page);
	FUNC6(src_page, 1);

	FUNC12(nm_i, nid);

	return dst_page;
}