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
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SHIFT ; 
 int FUNC0 (unsigned long,int,int /*<<< orphan*/ ,struct page**) ; 

__attribute__((used)) static int FUNC1(unsigned long addr, struct page **pages,
			    int nr_pages)
{
	return FUNC0(addr, nr_pages << PAGE_SHIFT,
					PAGE_KERNEL, pages);
}