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
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC9(struct inode *inode, sector_t beg, unsigned int n,
			    int sync)
{
	struct buffer_head *bh;
	sector_t end = beg + n;

	for (; beg < end; ++beg) {
		bh = FUNC5(inode->i_sb, beg);
		FUNC2(bh);
		FUNC4(bh->b_data, 0, inode->i_sb->s_blocksize);
		FUNC6(bh);
		FUNC3(bh);
		FUNC8(bh);
		if (FUNC0(inode) || sync)
			FUNC7(bh);
		FUNC1(bh);
	}
}