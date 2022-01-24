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
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 

int FUNC3(struct super_block *sb)
{
	journal_t *journal;

	if (FUNC2(sb))
		return 0;

	journal = FUNC0(sb)->s_journal;
	return FUNC1(journal);
}