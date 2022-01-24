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
struct reiserfs_journal_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOURNAL_DESC_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct reiserfs_journal_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct reiserfs_journal_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_journal_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct buffer_head *bh)
{
	struct reiserfs_journal_desc *desc;

	if (FUNC4(FUNC3(bh), JOURNAL_DESC_MAGIC, 8))
		return 1;

	desc = (struct reiserfs_journal_desc *)(bh->b_data);
	FUNC5("Desc block %llu (j_trans_id %d, j_mount_id %d, j_len %d)",
	       (unsigned long long)bh->b_blocknr, FUNC1(desc),
	       FUNC0(desc), FUNC2(desc));

	return 0;
}