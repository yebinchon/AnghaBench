#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  j_persistent_trans; } ;
struct TYPE_3__ {struct reiserfs_transaction_handle* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 TYPE_1__* current ; 
 int FUNC2 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*) ; 
 struct reiserfs_transaction_handle* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 

struct reiserfs_transaction_handle *FUNC6(struct
								    super_block
								    *s,
								    int nblocks)
{
	int ret;
	struct reiserfs_transaction_handle *th;

	/*
	 * if we're nesting into an existing transaction.  It will be
	 * persistent on its own
	 */
	if (FUNC5(s)) {
		th = current->journal_info;
		th->t_refcount++;
		FUNC0(th->t_refcount < 2);

		return th;
	}
	th = FUNC4(sizeof(struct reiserfs_transaction_handle), GFP_NOFS);
	if (!th)
		return NULL;
	ret = FUNC2(th, s, nblocks);
	if (ret) {
		FUNC3(th);
		return NULL;
	}

	FUNC1(s)->j_persistent_trans++;
	return th;
}