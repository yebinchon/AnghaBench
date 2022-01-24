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
struct buffer_head {int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC6(struct buffer_head *bh, int uptodate)
{
	if (FUNC0(bh)) {
		FUNC2(NULL, "clm-2084",
				 "pinned buffer %lu:%pg sent to disk",
				 bh->b_blocknr, bh->b_bdev);
	}
	if (uptodate)
		FUNC4(bh);
	else
		FUNC1(bh);

	FUNC5(bh);
	FUNC3(bh);
}