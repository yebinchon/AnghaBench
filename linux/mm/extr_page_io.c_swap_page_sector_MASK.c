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
typedef  int sector_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct page*) ; 

__attribute__((used)) static sector_t FUNC1(struct page *page)
{
	return (sector_t)FUNC0(page) << (PAGE_SHIFT - 9);
}