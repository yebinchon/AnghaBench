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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct TYPE_2__ {scalar_t__ reserved_blocks; int /*<<< orphan*/  commit_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  s_mount_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_transaction_handle*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct super_block *s)
{
	struct reiserfs_transaction_handle th;
	th.t_trans_id = 0;

	FUNC13(s);

	FUNC15(s);

	/*
	 * change file system state to current state if it was mounted
	 * with read-write permissions
	 */
	if (!FUNC17(s)) {
		if (!FUNC5(&th, s, 10)) {
			FUNC12(s, FUNC1(s),
						     1);
			FUNC18(FUNC2(s),
					    FUNC0(s)->s_mount_state);
			FUNC6(&th, FUNC1(s));
		}
	}

	/*
	 * note, journal_release checks for readonly mount, and can
	 * decide not to do a journal_end
	 */
	FUNC7(&th, s);

	FUNC11(s);

	FUNC3(FUNC1(s));

	FUNC10(s);

	if (FUNC0(s)->reserved_blocks != 0) {
		FUNC14(s, "green-2005", "reserved blocks left %d",
				 FUNC0(s)->reserved_blocks);
	}

	FUNC16(s);
	FUNC9(&FUNC0(s)->lock);
	FUNC4(FUNC0(s)->commit_wq);
	FUNC8(s->s_fs_info);
	s->s_fs_info = NULL;
}