#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_id; } ;
struct TYPE_3__ {scalar_t__ s_mb_free_pending; int /*<<< orphan*/  s_journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct super_block *sb, int *retries)
{
	if (!FUNC1(FUNC0(sb), 1, 0) ||
	    (*retries)++ > 1 ||
	    !FUNC0(sb)->s_journal)
		return 0;

	FUNC4();
	if (FUNC0(sb)->s_mb_free_pending == 0)
		return 0;

	FUNC3(1, "%s: retrying operation after ENOSPC\n", sb->s_id);
	FUNC2(FUNC0(sb)->s_journal);
	return 1;
}