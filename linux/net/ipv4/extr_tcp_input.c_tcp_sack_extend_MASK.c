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
typedef  void* u32 ;
struct tcp_sack_block {void* end_seq; void* start_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,void*) ; 
 scalar_t__ FUNC1 (void*,void*) ; 

__attribute__((used)) static inline bool FUNC2(struct tcp_sack_block *sp, u32 seq,
				  u32 end_seq)
{
	if (!FUNC0(seq, sp->end_seq) && !FUNC0(sp->start_seq, end_seq)) {
		if (FUNC1(seq, sp->start_seq))
			sp->start_seq = seq;
		if (FUNC0(end_seq, sp->end_seq))
			sp->end_seq = end_seq;
		return true;
	}
	return false;
}