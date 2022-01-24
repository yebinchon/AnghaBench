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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  int u16 ;
struct dccp_ackvec {int av_buf_head; int av_buf_tail; scalar_t__* av_buf; } ;
typedef  scalar_t__ s64 ;
typedef  enum dccp_ackvec_states { ____Placeholder_dccp_ackvec_states } dccp_ackvec_states ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DCCPAV_NOT_RECEIVED ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dccp_ackvec*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dccp_ackvec *av, s64 distance,
				   u64 seqno, enum dccp_ackvec_states state)
{
	u16 ptr = av->av_buf_head;

	FUNC0(distance > 0);
	if (FUNC5(FUNC2(av)))
		return;

	do {
		u8 runlen = FUNC3(av->av_buf + ptr);

		if (distance + runlen >= 0) {
			/*
			 * Only update the state if packet has not been received
			 * yet. This is OK as per the second table in RFC 4340,
			 * 11.4.1; i.e. here we are using the following table:
			 *                     RECEIVED
			 *                      0   1   3
			 *              S     +---+---+---+
			 *              T   0 | 0 | 0 | 0 |
			 *              O     +---+---+---+
			 *              R   1 | 1 | 1 | 1 |
			 *              E     +---+---+---+
			 *              D   3 | 0 | 1 | 3 |
			 *                    +---+---+---+
			 * The "Not Received" state was set by reserve_seats().
			 */
			if (av->av_buf[ptr] == DCCPAV_NOT_RECEIVED)
				av->av_buf[ptr] = state;
			else
				FUNC4("Not changing %llu state to %u\n",
					      (unsigned long long)seqno, state);
			break;
		}

		distance += runlen + 1;
		ptr	  = FUNC1(ptr, 1);

	} while (ptr != av->av_buf_tail);
}