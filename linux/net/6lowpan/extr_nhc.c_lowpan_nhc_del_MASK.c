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
struct lowpan_nhc {size_t nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** lowpan_nexthdr_nhcs ; 
 int /*<<< orphan*/  lowpan_nhc_lock ; 
 int /*<<< orphan*/  FUNC0 (struct lowpan_nhc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct lowpan_nhc *nhc)
{
	FUNC1(&lowpan_nhc_lock);

	FUNC0(nhc);
	lowpan_nexthdr_nhcs[nhc->nexthdr] = NULL;

	FUNC2(&lowpan_nhc_lock);

	FUNC3();
}