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
struct TYPE_2__ {int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
union sctp_sack_variable {TYPE_1__ gab; } ;
struct sctp_sackhdr {int /*<<< orphan*/  num_gap_ack_blocks; union sctp_sack_variable* variable; } ;
struct sctp_association {int next_tsn; int ctsn_ack_point; int unack_data; } ;
typedef  int __u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sctp_association *assoc,
					struct sctp_sackhdr *sack)
{
	union sctp_sack_variable *frags;
	__u16 unack_data;
	int i;

	unack_data = assoc->next_tsn - assoc->ctsn_ack_point - 1;

	frags = sack->variable;
	for (i = 0; i < FUNC0(sack->num_gap_ack_blocks); i++) {
		unack_data -= ((FUNC0(frags[i].gab.end) -
				FUNC0(frags[i].gab.start) + 1));
	}

	assoc->unack_data = unack_data;
}