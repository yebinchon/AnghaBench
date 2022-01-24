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
struct sctp_tsnmap_iter {scalar_t__ start; } ;
struct sctp_tsnmap {scalar_t__ cumulative_tsn_ack_point; int /*<<< orphan*/  len; int /*<<< orphan*/  tsn_map; scalar_t__ base_tsn; int /*<<< orphan*/  max_tsn_seen; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(const struct sctp_tsnmap *map,
				    struct sctp_tsnmap_iter *iter,
				    __u16 *start, __u16 *end)
{
	int ended = 0;
	__u16 start_ = 0, end_ = 0, offset;

	/* If there are no more gap acks possible, get out fast.  */
	if (FUNC0(map->max_tsn_seen, iter->start))
		return 0;

	offset = iter->start - map->base_tsn;
	FUNC1(map->tsn_map, offset, map->len,
				 &start_, &end_);

	/* The Gap Ack Block happens to end at the end of the map. */
	if (start_ && !end_)
		end_ = map->len - 1;

	/* If we found a Gap Ack Block, return the start and end and
	 * bump the iterator forward.
	 */
	if (end_) {
		/* Fix up the start and end based on the
		 * Cumulative TSN Ack which is always 1 behind base.
		 */
		*start = start_ + 1;
		*end = end_ + 1;

		/* Move the iterator forward.  */
		iter->start = map->cumulative_tsn_ack_point + *end + 1;
		ended = 1;
	}

	return ended;
}