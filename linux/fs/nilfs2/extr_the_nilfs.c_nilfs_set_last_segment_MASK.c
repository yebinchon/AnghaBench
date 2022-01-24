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
typedef  scalar_t__ u64 ;
struct the_nilfs {scalar_t__ ns_last_seq; scalar_t__ ns_prev_seq; int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_last_cno; int /*<<< orphan*/  ns_last_pseg; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct the_nilfs *nilfs,
			    sector_t start_blocknr, u64 seq, __u64 cno)
{
	FUNC2(&nilfs->ns_last_segment_lock);
	nilfs->ns_last_pseg = start_blocknr;
	nilfs->ns_last_seq = seq;
	nilfs->ns_last_cno = cno;

	if (!FUNC0(nilfs)) {
		if (nilfs->ns_prev_seq == nilfs->ns_last_seq)
			goto stay_cursor;

		FUNC1(nilfs);
	}
	nilfs->ns_prev_seq = nilfs->ns_last_seq;

 stay_cursor:
	FUNC3(&nilfs->ns_last_segment_lock);
}