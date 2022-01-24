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
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_state; struct page* b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Async_Write ; 
 int /*<<< orphan*/  BH_Dirty ; 
 int /*<<< orphan*/  BH_Mapped ; 
 int /*<<< orphan*/  BH_NILFS_Checked ; 
 int /*<<< orphan*/  BH_NILFS_Redirected ; 
 int /*<<< orphan*/  BH_NILFS_Volatile ; 
 int /*<<< orphan*/  BH_Uptodate ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

void FUNC9(struct buffer_head *bh)
{
	struct page *page = bh->b_page;
	const unsigned long clear_bits =
		(FUNC0(BH_Uptodate) | FUNC0(BH_Dirty) | FUNC0(BH_Mapped) |
		 FUNC0(BH_Async_Write) | FUNC0(BH_NILFS_Volatile) |
		 FUNC0(BH_NILFS_Checked) | FUNC0(BH_NILFS_Redirected));

	FUNC5(bh);
	FUNC7(&bh->b_state, clear_bits, 0);
	if (FUNC6(page))
		FUNC3(page);

	bh->b_blocknr = -1;
	FUNC2(page);
	FUNC1(page);
	FUNC8(bh);
	FUNC4(bh);
}