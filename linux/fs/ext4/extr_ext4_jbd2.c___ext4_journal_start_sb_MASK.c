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
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 

handle_t *FUNC6(struct super_block *sb, unsigned int line,
				  int type, int blocks, int rsv_blocks)
{
	journal_t *journal;
	int err;

	FUNC5(sb, blocks, rsv_blocks, _RET_IP_);
	err = FUNC3(sb);
	if (err < 0)
		return FUNC0(err);

	journal = FUNC1(sb)->s_journal;
	if (!journal)
		return FUNC2();
	return FUNC4(journal, blocks, rsv_blocks, GFP_NOFS,
				   type, line);
}