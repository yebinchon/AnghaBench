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
struct journal_head {int /*<<< orphan*/ * b_transaction; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int FUNC1 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct journal_head*) ; 

__attribute__((used)) static int FUNC6(struct journal_head *jh)
{
	int ret = 0;
	struct buffer_head *bh = FUNC5(jh);

	if (jh->b_transaction == NULL && !FUNC3(bh) &&
	    !FUNC2(bh) && !FUNC4(bh)) {
		FUNC0(jh, "remove from checkpoint list");
		ret = FUNC1(jh) + 1;
	}
	return ret;
}