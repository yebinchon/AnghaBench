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
struct mem_zone_bm_rtree {unsigned long start_pfn; unsigned long end_pfn; int /*<<< orphan*/  leaves; int /*<<< orphan*/  nodes; } ;
struct chain_allocator {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BM_BITS_PER_BLOCK ; 
 unsigned int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PG_UNSAFE_CLEAR ; 
 scalar_t__ FUNC2 (struct mem_zone_bm_rtree*,int /*<<< orphan*/ ,int,struct chain_allocator*) ; 
 struct mem_zone_bm_rtree* FUNC3 (struct chain_allocator*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_zone_bm_rtree*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mem_zone_bm_rtree *FUNC5(gfp_t gfp_mask,
						      int safe_needed,
						      struct chain_allocator *ca,
						      unsigned long start,
						      unsigned long end)
{
	struct mem_zone_bm_rtree *zone;
	unsigned int i, nr_blocks;
	unsigned long pages;

	pages = end - start;
	zone  = FUNC3(ca, sizeof(struct mem_zone_bm_rtree));
	if (!zone)
		return NULL;

	FUNC1(&zone->nodes);
	FUNC1(&zone->leaves);
	zone->start_pfn = start;
	zone->end_pfn = end;
	nr_blocks = FUNC0(pages, BM_BITS_PER_BLOCK);

	for (i = 0; i < nr_blocks; i++) {
		if (FUNC2(zone, gfp_mask, safe_needed, ca)) {
			FUNC4(zone, PG_UNSAFE_CLEAR);
			return NULL;
		}
	}

	return zone;
}