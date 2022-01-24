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
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_super; int /*<<< orphan*/  t_trans_id; } ;
struct inode {scalar_t__ i_size; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {TYPE_1__* s_rs; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_inode_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct reiserfs_transaction_handle *th,
			   struct inode *inode)
{
	int err;
	inode->i_size = 0;
	FUNC0(!th->t_trans_id);

	/* for directory this deletes item containing "." and ".." */
	err =
	    FUNC6(th, inode, NULL, 0 /*no timestamp updates */ );
	if (err)
		return err;

#if defined( USE_INODE_GENERATION_COUNTER )
	if (!old_format_only(th->t_super)) {
		__le32 *inode_generation;

		inode_generation =
		    &REISERFS_SB(th->t_super)->s_rs->s_inode_generation;
		le32_add_cpu(inode_generation, 1);
	}
/* USE_INODE_GENERATION_COUNTER */
#endif
	FUNC5(th, inode, FUNC1(inode));

	return err;
}