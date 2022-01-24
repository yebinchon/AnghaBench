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
struct zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int FUNC0 (struct zone*,unsigned int,unsigned long,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct zone *z, unsigned int order, unsigned long mark,
		      int classzone_idx, unsigned int alloc_flags)
{
	return FUNC0(z, order, mark, classzone_idx, alloc_flags,
					FUNC1(z, NR_FREE_PAGES));
}