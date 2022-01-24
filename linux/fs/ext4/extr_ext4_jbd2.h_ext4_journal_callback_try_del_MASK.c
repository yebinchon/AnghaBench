#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ext4_sb_info {int /*<<< orphan*/  s_md_lock; } ;
struct ext4_journal_cb_entry {int /*<<< orphan*/  jce_list; } ;
struct TYPE_7__ {TYPE_2__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;
struct TYPE_6__ {TYPE_1__* t_journal; } ;
struct TYPE_5__ {int /*<<< orphan*/  j_private; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(handle_t *handle,
					     struct ext4_journal_cb_entry *jce)
{
	bool deleted;
	struct ext4_sb_info *sbi =
			FUNC0(handle->h_transaction->t_journal->j_private);

	FUNC3(&sbi->s_md_lock);
	deleted = !FUNC2(&jce->jce_list);
	FUNC1(&jce->jce_list);
	FUNC4(&sbi->s_md_lock);
	return deleted;
}