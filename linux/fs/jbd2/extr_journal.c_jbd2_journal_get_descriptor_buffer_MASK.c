#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int t_tid; TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  j_blocksize; int /*<<< orphan*/  j_dev; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_8__ {void* h_sequence; void* h_blocktype; void* h_magic; } ;
typedef  TYPE_3__ journal_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int JBD2_MAGIC_NUMBER ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

struct buffer_head *
FUNC8(transaction_t *transaction, int type)
{
	journal_t *journal = transaction->t_journal;
	struct buffer_head *bh;
	unsigned long long blocknr;
	journal_header_t *header;
	int err;

	err = FUNC3(journal, &blocknr);

	if (err)
		return NULL;

	bh = FUNC1(journal->j_dev, blocknr, journal->j_blocksize);
	if (!bh)
		return NULL;
	FUNC4(bh);
	FUNC5(bh->b_data, 0, journal->j_blocksize);
	header = (journal_header_t *)bh->b_data;
	header->h_magic = FUNC2(JBD2_MAGIC_NUMBER);
	header->h_blocktype = FUNC2(type);
	header->h_sequence = FUNC2(transaction->t_tid);
	FUNC6(bh);
	FUNC7(bh);
	FUNC0(bh, "return this buffer");
	return bh;
}