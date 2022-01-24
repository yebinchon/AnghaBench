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
struct reiserfs_transaction_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

__attribute__((used)) static int FUNC6(struct super_block *s, int wait)
{
	struct reiserfs_transaction_handle th;

	/*
	 * Writeback quota in non-journalled quota case - journalled quota has
	 * no dirty dquots
	 */
	FUNC0(s, -1);
	FUNC4(s);
	if (!FUNC1(&th, s, 1))
		if (!FUNC2(&th))
			FUNC3(s);
	FUNC5(s);
	return 0;
}