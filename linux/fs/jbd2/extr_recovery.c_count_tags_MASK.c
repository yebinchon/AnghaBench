#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct jbd2_journal_block_tail {int dummy; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_6__ {int j_blocksize; } ;
typedef  TYPE_1__ journal_t ;
typedef  int /*<<< orphan*/  journal_header_t ;
struct TYPE_7__ {int t_flags; } ;
typedef  TYPE_2__ journal_block_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  JBD2_FLAG_LAST_TAG ; 
 int /*<<< orphan*/  JBD2_FLAG_SAME_UUID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(journal_t *journal, struct buffer_head *bh)
{
	char *			tagp;
	journal_block_tag_t *	tag;
	int			nr = 0, size = journal->j_blocksize;
	int			tag_bytes = FUNC2(journal);

	if (FUNC1(journal))
		size -= sizeof(struct jbd2_journal_block_tail);

	tagp = &bh->b_data[sizeof(journal_header_t)];

	while ((tagp - bh->b_data + tag_bytes) <= size) {
		tag = (journal_block_tag_t *) tagp;

		nr++;
		tagp += tag_bytes;
		if (!(tag->t_flags & FUNC0(JBD2_FLAG_SAME_UUID)))
			tagp += 16;

		if (tag->t_flags & FUNC0(JBD2_FLAG_LAST_TAG))
			break;
	}

	return nr;
}