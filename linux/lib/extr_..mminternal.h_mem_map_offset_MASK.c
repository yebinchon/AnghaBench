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
 int MAX_ORDER_NR_PAGES ; 
 struct page* FUNC0 (struct page*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline struct page *FUNC2(struct page *base, int offset)
{
	if (FUNC1(offset >= MAX_ORDER_NR_PAGES))
		return FUNC0(base, offset);
	return base + offset;
}