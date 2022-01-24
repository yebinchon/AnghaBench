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
struct buffer_head {int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_state; int /*<<< orphan*/  b_count; scalar_t__ b_blocknr; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int FUNC4 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(char *buf, size_t size, struct buffer_head *bh)
{
	return FUNC4(buf, size,
			 "dev %pg, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)",
			 bh->b_bdev, bh->b_size,
			 (unsigned long long)bh->b_blocknr,
			 FUNC0(&(bh->b_count)),
			 bh->b_state, bh->b_page,
			 FUNC3(bh) ? "UPTODATE" : "!UPTODATE",
			 FUNC1(bh) ? "DIRTY" : "CLEAN",
			 FUNC2(bh) ? "LOCKED" : "UNLOCKED");
}