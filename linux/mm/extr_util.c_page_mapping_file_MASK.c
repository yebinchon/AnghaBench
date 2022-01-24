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
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct address_space* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

struct address_space *FUNC3(struct page *page)
{
	if (FUNC2(FUNC0(page)))
		return NULL;
	return FUNC1(page);
}