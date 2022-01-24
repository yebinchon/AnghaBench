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
struct wb_domain {unsigned long dirty_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long*) ; 
 struct wb_domain global_wb_domain ; 
 int FUNC1 () ; 
 int ratelimit_pages ; 

void FUNC2(void)
{
	struct wb_domain *dom = &global_wb_domain;
	unsigned long background_thresh;
	unsigned long dirty_thresh;

	FUNC0(&background_thresh, &dirty_thresh);
	dom->dirty_limit = dirty_thresh;
	ratelimit_pages = dirty_thresh / (FUNC1() * 32);
	if (ratelimit_pages < 16)
		ratelimit_pages = 16;
}