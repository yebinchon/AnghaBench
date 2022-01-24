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
typedef  int u8 ;
typedef  void* u64 ;
struct sk_buff {int dummy; } ;
struct dccp_ackvec {int* av_buf; int av_buf_head; void* av_buf_ackno; void* av_tail_ackno; } ;
typedef  int s64 ;
typedef  enum dccp_ackvec_states { ____Placeholder_dccp_ackvec_states } dccp_ackvec_states ;
struct TYPE_2__ {void* dccpd_seq; } ;

/* Variables and functions */
 scalar_t__ DCCPAV_MAX_RUNLEN ; 
 int DCCPAV_RECEIVED ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct dccp_ackvec*,int,void*,int) ; 
 scalar_t__ FUNC2 (struct dccp_ackvec*) ; 
 scalar_t__ FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct dccp_ackvec*,int,void*,int) ; 
 int FUNC6 (void*,void*) ; 

void FUNC7(struct dccp_ackvec *av, struct sk_buff *skb)
{
	u64 seqno = FUNC0(skb)->dccpd_seq;
	enum dccp_ackvec_states state = DCCPAV_RECEIVED;

	if (FUNC2(av)) {
		FUNC1(av, 1, seqno, state);
		av->av_tail_ackno = seqno;

	} else {
		s64 num_packets = FUNC6(av->av_buf_ackno, seqno);
		u8 *current_head = av->av_buf + av->av_buf_head;

		if (num_packets == 1 &&
		    FUNC4(current_head) == state &&
		    FUNC3(current_head) < DCCPAV_MAX_RUNLEN) {

			*current_head   += 1;
			av->av_buf_ackno = seqno;

		} else if (num_packets > 0) {
			FUNC1(av, num_packets, seqno, state);
		} else {
			FUNC5(av, num_packets, seqno, state);
		}
	}
}