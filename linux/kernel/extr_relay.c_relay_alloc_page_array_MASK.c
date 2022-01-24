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
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t const PAGE_SIZE ; 
 struct page** FUNC0 (size_t const,int /*<<< orphan*/ ) ; 
 struct page** FUNC1 (size_t const) ; 

__attribute__((used)) static struct page **FUNC2(unsigned int n_pages)
{
	const size_t pa_size = n_pages * sizeof(struct page *);
	if (pa_size > PAGE_SIZE)
		return FUNC1(pa_size);
	return FUNC0(pa_size, GFP_KERNEL);
}