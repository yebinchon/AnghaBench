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
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct page* FUNC0 (int) ; 
 int FUNC1 () ; 

struct page *FUNC2(void)
{
	struct page *page = FUNC0(FUNC1() |
				       __GFP_NOMEMALLOC | __GFP_NORETRY |
				       __GFP_NOWARN);
	return page;
}