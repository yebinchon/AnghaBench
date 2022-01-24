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
struct ext4_super_block {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 

__attribute__((used)) static void FUNC10(struct super_block *sb,
					struct ext4_super_block *es)
{
	journal_t *journal = FUNC1(sb)->s_journal;

	if (!FUNC4(sb)) {
		FUNC0(journal != NULL);
		return;
	}
	FUNC7(journal);
	if (FUNC6(journal) < 0)
		goto out;

	if (FUNC5(sb) && FUNC9(sb)) {
		FUNC2(sb);
		FUNC3(sb, 1);
	}

out:
	FUNC8(journal);
}