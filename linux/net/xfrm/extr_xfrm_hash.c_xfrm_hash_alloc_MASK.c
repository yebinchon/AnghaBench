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
 int GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ hashdist ; 
 struct hlist_head* FUNC2 (unsigned int,int) ; 
 struct hlist_head* FUNC3 (unsigned int) ; 

struct hlist_head *FUNC4(unsigned int sz)
{
	struct hlist_head *n;

	if (sz <= PAGE_SIZE)
		n = FUNC2(sz, GFP_KERNEL);
	else if (hashdist)
		n = FUNC3(sz);
	else
		n = (struct hlist_head *)
			FUNC0(GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO,
					 FUNC1(sz));

	return n;
}