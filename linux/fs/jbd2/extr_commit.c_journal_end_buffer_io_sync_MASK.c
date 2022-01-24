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
struct buffer_head {int /*<<< orphan*/  b_state; struct buffer_head* b_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Shadow ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct buffer_head *bh, int uptodate)
{
	struct buffer_head *orig_bh = bh->b_private;

	FUNC0(bh, "");
	if (uptodate)
		FUNC3(bh);
	else
		FUNC2(bh);
	if (orig_bh) {
		FUNC1(BH_Shadow, &orig_bh->b_state);
		FUNC4();
		FUNC6(&orig_bh->b_state, BH_Shadow);
	}
	FUNC5(bh);
}