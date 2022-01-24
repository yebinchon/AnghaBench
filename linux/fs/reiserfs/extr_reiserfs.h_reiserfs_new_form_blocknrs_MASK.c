#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree_balance {int /*<<< orphan*/  key; int /*<<< orphan*/  tb_path; int /*<<< orphan*/  transaction_handle; } ;
struct TYPE_3__ {int formatted_node; int /*<<< orphan*/  block; int /*<<< orphan*/  key; int /*<<< orphan*/ * inode; int /*<<< orphan*/  path; int /*<<< orphan*/  th; } ;
typedef  TYPE_1__ reiserfs_blocknr_hint_t ;
typedef  int /*<<< orphan*/  b_blocknr_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct tree_balance *tb,
					     b_blocknr_t * new_blocknrs,
					     int amount_needed)
{
	reiserfs_blocknr_hint_t hint = {
		.th = tb->transaction_handle,
		.path = tb->tb_path,
		.inode = NULL,
		.key = tb->key,
		.block = 0,
		.formatted_node = 1
	};
	return FUNC0(&hint, new_blocknrs, amount_needed,
					  0);
}