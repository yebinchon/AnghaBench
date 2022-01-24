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
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,struct item_head*) ; 
 struct item_head* FUNC3 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct item_head*,int /*<<< orphan*/ ) ; 

void FUNC5(struct buffer_head *bh)
{
	int i;
	struct item_head *ih;

	if (!bh)
		return;
	FUNC1(bh);
	for (i = 0, ih = FUNC3(bh, 0); i < FUNC0(bh); i++, ih++)
		FUNC4(ih, FUNC2(bh, ih));
}