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
struct sctp_tsnmap_iter {int dummy; } ;
struct sctp_tsnmap {int dummy; } ;
struct sctp_gap_ack_block {void* end; void* start; } ;
typedef  int __u16 ;

/* Variables and functions */
 int SCTP_MAX_GABS ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sctp_tsnmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tsnmap*,struct sctp_tsnmap_iter*) ; 
 scalar_t__ FUNC3 (struct sctp_tsnmap*,struct sctp_tsnmap_iter*,int*,int*) ; 

__u16 FUNC4(struct sctp_tsnmap *map,
			   struct sctp_gap_ack_block *gabs)
{
	struct sctp_tsnmap_iter iter;
	int ngaps = 0;

	/* Refresh the gap ack information. */
	if (FUNC1(map)) {
		__u16 start = 0, end = 0;
		FUNC2(map, &iter);
		while (FUNC3(map, &iter,
						&start,
						&end)) {

			gabs[ngaps].start = FUNC0(start);
			gabs[ngaps].end = FUNC0(end);
			ngaps++;
			if (ngaps >= SCTP_MAX_GABS)
				break;
		}
	}
	return ngaps;
}