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
struct super_block {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct super_block*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb)
{
	if (FUNC4(sb) || FUNC2(FUNC0(sb)))
		return 0;

	if (FUNC0(sb)->s_journal) {
		/* Reset the needs_recovery flag before the fs is unlocked. */
		FUNC3(sb);
	}

	FUNC1(sb, 1);
	return 0;
}