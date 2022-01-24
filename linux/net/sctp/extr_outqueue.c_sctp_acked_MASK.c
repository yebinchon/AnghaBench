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
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
union sctp_sack_variable {TYPE_1__ gab; } ;
struct sctp_sackhdr {int /*<<< orphan*/  num_gap_ack_blocks; union sctp_sack_variable* variable; int /*<<< orphan*/  cum_tsn_ack; } ;
typedef  int __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sctp_sackhdr *sack, __u32 tsn)
{
	__u32 ctsn = FUNC1(sack->cum_tsn_ack);
	union sctp_sack_variable *frags;
	__u16 tsn_offset, blocks;
	int i;

	if (FUNC0(tsn, ctsn))
		goto pass;

	/* 3.3.4 Selective Acknowledgment (SACK) (3):
	 *
	 * Gap Ack Blocks:
	 *  These fields contain the Gap Ack Blocks. They are repeated
	 *  for each Gap Ack Block up to the number of Gap Ack Blocks
	 *  defined in the Number of Gap Ack Blocks field. All DATA
	 *  chunks with TSNs greater than or equal to (Cumulative TSN
	 *  Ack + Gap Ack Block Start) and less than or equal to
	 *  (Cumulative TSN Ack + Gap Ack Block End) of each Gap Ack
	 *  Block are assumed to have been received correctly.
	 */

	frags = sack->variable;
	blocks = FUNC2(sack->num_gap_ack_blocks);
	tsn_offset = tsn - ctsn;
	for (i = 0; i < blocks; ++i) {
		if (tsn_offset >= FUNC2(frags[i].gab.start) &&
		    tsn_offset <= FUNC2(frags[i].gab.end))
			goto pass;
	}

	return 0;
pass:
	return 1;
}