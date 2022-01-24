#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_data; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_NILFS_Node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct inode* FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC9 (struct inode*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

struct buffer_head *
FUNC15(struct address_space *btnc, __u64 blocknr)
{
	struct inode *inode = FUNC2(btnc);
	struct buffer_head *bh;

	bh = FUNC9(inode, btnc, blocknr, FUNC0(BH_NILFS_Node));
	if (FUNC13(!bh))
		return NULL;

	if (FUNC13(FUNC5(bh) || FUNC6(bh) ||
		     FUNC4(bh))) {
		FUNC3(bh);
		FUNC1();
	}
	FUNC8(bh->b_data, 0, FUNC7(inode));
	bh->b_bdev = inode->i_sb->s_bdev;
	bh->b_blocknr = blocknr;
	FUNC11(bh);
	FUNC12(bh);

	FUNC14(bh->b_page);
	FUNC10(bh->b_page);
	return bh;
}