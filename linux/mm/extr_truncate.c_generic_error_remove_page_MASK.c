#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct address_space {TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct address_space*,struct page*) ; 

int FUNC2(struct address_space *mapping, struct page *page)
{
	if (!mapping)
		return -EINVAL;
	/*
	 * Only punch for normal data pages for now.
	 * Handling other types like directories would need more auditing.
	 */
	if (!FUNC0(mapping->host->i_mode))
		return -EIO;
	return FUNC1(mapping, page);
}