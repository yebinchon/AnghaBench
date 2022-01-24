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
struct page {int dummy; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (struct page*) ; 

__attribute__((used)) static void *FUNC3(int cpu)
{
	struct page *page;
	int node;

	node = (cpu == -1) ? cpu : FUNC1(cpu);
	page = FUNC0(node, GFP_KERNEL | __GFP_ZERO, 0);
	if (!page)
		return NULL;

	return FUNC2(page);
}