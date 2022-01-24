#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct recovery_info {int /*<<< orphan*/  nr_revokes; } ;
struct jbd2_journal_block_tail {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_9__ {int j_blocksize; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_10__ {int /*<<< orphan*/  r_count; } ;
typedef  TYPE_2__ jbd2_journal_revoke_header_t ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(journal_t *journal, struct buffer_head *bh,
			       tid_t sequence, struct recovery_info *info)
{
	jbd2_journal_revoke_header_t *header;
	int offset, max;
	int csum_size = 0;
	__u32 rcount;
	int record_len = 4;

	header = (jbd2_journal_revoke_header_t *) bh->b_data;
	offset = sizeof(jbd2_journal_revoke_header_t);
	rcount = FUNC0(header->r_count);

	if (!FUNC2(journal, header))
		return -EFSBADCRC;

	if (FUNC4(journal))
		csum_size = sizeof(struct jbd2_journal_block_tail);
	if (rcount > journal->j_blocksize - csum_size)
		return -EINVAL;
	max = rcount;

	if (FUNC3(journal))
		record_len = 8;

	while (offset + record_len <= max) {
		unsigned long long blocknr;
		int err;

		if (record_len == 4)
			blocknr = FUNC0(* ((__be32 *) (bh->b_data+offset)));
		else
			blocknr = FUNC1(* ((__be64 *) (bh->b_data+offset)));
		offset += record_len;
		err = FUNC5(journal, blocknr, sequence);
		if (err)
			return err;
		++info->nr_revokes;
	}
	return 0;
}