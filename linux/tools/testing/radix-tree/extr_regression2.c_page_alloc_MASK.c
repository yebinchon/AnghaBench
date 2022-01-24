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
struct page {scalar_t__ index; } ;

/* Variables and functions */
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  page_count ; 

__attribute__((used)) static struct page *FUNC1(void)
{
	struct page *p;
	p = FUNC0(sizeof(struct page));
	p->index = page_count++;

	return p;
}