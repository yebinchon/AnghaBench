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
struct reiserfs_journal_list {int /*<<< orphan*/  j_working_list; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_num_work_lists; } ;

/* Variables and functions */
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct super_block *s,
			       struct reiserfs_journal_list *jl)
{
	struct reiserfs_journal *journal = FUNC0(s);
	if (!FUNC2(&jl->j_working_list)) {
		FUNC1(&jl->j_working_list);
		journal->j_num_work_lists--;
	}
}