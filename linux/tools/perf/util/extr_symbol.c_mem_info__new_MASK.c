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
struct mem_info {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct mem_info* FUNC1 (int) ; 

struct mem_info *FUNC2(void)
{
	struct mem_info *mi = FUNC1(sizeof(*mi));

	if (mi)
		FUNC0(&mi->refcnt, 1);
	return mi;
}