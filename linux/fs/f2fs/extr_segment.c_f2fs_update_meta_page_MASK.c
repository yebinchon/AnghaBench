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
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct page* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct f2fs_sb_info *sbi,
					void *src, block_t blk_addr)
{
	struct page *page = FUNC0(sbi, blk_addr);

	FUNC2(FUNC3(page), src, PAGE_SIZE);
	FUNC4(page);
	FUNC1(page, 1);
}