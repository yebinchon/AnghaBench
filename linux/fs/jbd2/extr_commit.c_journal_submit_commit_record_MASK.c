#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  transaction_t ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct commit_header {void** h_chksum; int /*<<< orphan*/  h_chksum_size; int /*<<< orphan*/  h_chksum_type; void* h_commit_nsec; int /*<<< orphan*/  h_commit_sec; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_data; } ;
struct TYPE_7__ {int j_flags; } ;
typedef  TYPE_1__ journal_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int JBD2_BARRIER ; 
 int /*<<< orphan*/  JBD2_COMMIT_BLOCK ; 
 int /*<<< orphan*/  JBD2_CRC32_CHKSUM ; 
 int /*<<< orphan*/  JBD2_CRC32_CHKSUM_SIZE ; 
 int REQ_FUA ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 struct buffer_head* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  journal_end_buffer_io_sync ; 
 int /*<<< orphan*/  FUNC9 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 

__attribute__((used)) static int FUNC13(journal_t *journal,
					transaction_t *commit_transaction,
					struct buffer_head **cbh,
					__u32 crc32_sum)
{
	struct commit_header *tmp;
	struct buffer_head *bh;
	int ret;
	struct timespec64 now;

	*cbh = NULL;

	if (FUNC4(journal))
		return 0;

	bh = FUNC8(commit_transaction,
						JBD2_COMMIT_BLOCK);
	if (!bh)
		return 1;

	tmp = (struct commit_header *)bh->b_data;
	FUNC9(&now);
	tmp->h_commit_sec = FUNC3(now.tv_sec);
	tmp->h_commit_nsec = FUNC2(now.tv_nsec);

	if (FUNC7(journal)) {
		tmp->h_chksum_type 	= JBD2_CRC32_CHKSUM;
		tmp->h_chksum_size 	= JBD2_CRC32_CHKSUM_SIZE;
		tmp->h_chksum[0] 	= FUNC2(crc32_sum);
	}
	FUNC5(journal, bh);

	FUNC0(bh, "submit commit block");
	FUNC10(bh);
	FUNC1(bh);
	FUNC11(bh);
	bh->b_end_io = journal_end_buffer_io_sync;

	if (journal->j_flags & JBD2_BARRIER &&
	    !FUNC6(journal))
		ret = FUNC12(REQ_OP_WRITE,
			REQ_SYNC | REQ_PREFLUSH | REQ_FUA, bh);
	else
		ret = FUNC12(REQ_OP_WRITE, REQ_SYNC, bh);

	*cbh = bh;
	return ret;
}