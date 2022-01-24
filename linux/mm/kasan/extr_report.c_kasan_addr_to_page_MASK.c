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
 scalar_t__ PAGE_OFFSET ; 
 void const* high_memory ; 
 struct page* FUNC0 (void const*) ; 

struct page *FUNC1(const void *addr)
{
	if ((addr >= (void *)PAGE_OFFSET) &&
			(addr < high_memory))
		return FUNC0(addr);
	return NULL;
}