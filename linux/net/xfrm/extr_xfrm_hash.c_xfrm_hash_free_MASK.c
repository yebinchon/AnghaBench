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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ hashdist ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_head*) ; 

void FUNC4(struct hlist_head *n, unsigned int sz)
{
	if (sz <= PAGE_SIZE)
		FUNC2(n);
	else if (hashdist)
		FUNC3(n);
	else
		FUNC0((unsigned long)n, FUNC1(sz));
}