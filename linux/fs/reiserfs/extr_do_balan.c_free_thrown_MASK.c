#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tree_balance {int /*<<< orphan*/  transaction_handle; TYPE_1__** thrown; int /*<<< orphan*/  tb_sb; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;
struct TYPE_4__ {int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tree_balance *tb)
{
	int i;
	b_blocknr_t blocknr;
	for (i = 0; i < FUNC0(tb->thrown); i++) {
		if (tb->thrown[i]) {
			blocknr = tb->thrown[i]->b_blocknr;
			if (FUNC2(tb->thrown[i]))
				FUNC4(tb->tb_sb, "reiserfs-12322",
						 "called with dirty buffer %d",
						 blocknr);
			FUNC1(tb->thrown[i]);	/* incremented in store_thrown */
			FUNC3(tb->transaction_handle, NULL,
					    blocknr, 0);
		}
	}
}