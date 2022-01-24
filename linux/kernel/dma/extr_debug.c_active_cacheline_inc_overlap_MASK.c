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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int ACTIVE_CACHELINE_MAX_OVERLAP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(phys_addr_t cln)
{
	int overlap = FUNC1(cln);

	overlap = FUNC2(cln, ++overlap);

	/* If we overflowed the overlap counter then we're potentially
	 * leaking dma-mappings.  Otherwise, if maps and unmaps are
	 * balanced then this overflow may cause false negatives in
	 * debug_dma_assert_idle() as the cacheline may be marked idle
	 * prematurely.
	 */
	FUNC0(overlap > ACTIVE_CACHELINE_MAX_OVERLAP,
		  FUNC3("exceeded %d overlapping mappings of cacheline %pa\n"),
		  ACTIVE_CACHELINE_MAX_OVERLAP, &cln);
}