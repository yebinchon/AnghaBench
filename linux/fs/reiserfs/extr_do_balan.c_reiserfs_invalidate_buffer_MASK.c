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
struct tree_balance {int dummy; } ;
struct buffer_head {int dummy; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FREE_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,struct buffer_head*) ; 

void FUNC5(struct tree_balance *tb, struct buffer_head *bh)
{
	struct block_head *blkh;
	blkh = FUNC0(bh);
	FUNC2(blkh, FREE_LEVEL);
	FUNC3(blkh, 0);

	FUNC1(bh);
	FUNC4(tb, bh);
}