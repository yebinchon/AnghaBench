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
struct super_block {int dummy; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_async_throttle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int HZ ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int FUNC4 (struct super_block*) ; 

__attribute__((used)) static int FUNC5(struct super_block *s)
{
	struct reiserfs_journal *j = FUNC0(s);

	if (FUNC1(&j->j_async_throttle)) {
		int depth;

		depth = FUNC4(s);
		FUNC2(BLK_RW_ASYNC, HZ / 10);
		FUNC3(s, depth);
	}

	return 0;
}