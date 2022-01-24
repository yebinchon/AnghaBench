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

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct page *page)
{
	FUNC10(page, NODE);

	if (!FUNC3(page))
		FUNC4(page);
#ifdef CONFIG_F2FS_CHECK_FS
	if (IS_INODE(page))
		f2fs_inode_chksum_set(F2FS_P_SB(page), page);
#endif
	if (!FUNC2(page)) {
		FUNC5(page);
		FUNC9(FUNC0(page), F2FS_DIRTY_NODES);
		FUNC7(page, 0);
		FUNC8(page);
		return 1;
	}
	return 0;
}