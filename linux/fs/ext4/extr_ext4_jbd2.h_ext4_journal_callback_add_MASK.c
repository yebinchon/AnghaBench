#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext4_sb_info {int /*<<< orphan*/  s_md_lock; } ;
struct ext4_journal_cb_entry {void (* jce_func ) (struct super_block*,struct ext4_journal_cb_entry*,int) ;} ;
struct TYPE_8__ {TYPE_2__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;
struct TYPE_7__ {TYPE_1__* t_journal; } ;
struct TYPE_6__ {int /*<<< orphan*/  j_private; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct ext4_journal_cb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(handle_t *handle,
			void (*func)(struct super_block *sb,
				     struct ext4_journal_cb_entry *jce,
				     int rc),
			struct ext4_journal_cb_entry *jce)
{
	struct ext4_sb_info *sbi =
			FUNC0(handle->h_transaction->t_journal->j_private);

	/* Add the jce to transaction's private list */
	jce->jce_func = func;
	FUNC2(&sbi->s_md_lock);
	FUNC1(handle, jce);
	FUNC3(&sbi->s_md_lock);
}