#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_state; TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_datasync_tid; } ;
struct TYPE_5__ {int /*<<< orphan*/ * s_journal; } ;
struct TYPE_4__ {int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int I_DIRTY_DATASYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct inode *inode)
{
	journal_t *journal = FUNC1(inode->i_sb)->s_journal;

	if (journal)
		return !FUNC2(journal,
					FUNC0(inode)->i_datasync_tid);
	/* Any metadata buffers to write? */
	if (!FUNC3(&inode->i_mapping->private_list))
		return true;
	return inode->i_state & I_DIRTY_DATASYNC;
}