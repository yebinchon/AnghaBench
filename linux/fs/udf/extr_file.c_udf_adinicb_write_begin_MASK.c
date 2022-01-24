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
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct file *file,
			struct address_space *mapping, loff_t pos,
			unsigned len, unsigned flags, struct page **pagep,
			void **fsdata)
{
	struct page *page;

	if (FUNC1(pos >= PAGE_SIZE))
		return -EIO;
	page = FUNC3(mapping, 0, flags);
	if (!page)
		return -ENOMEM;
	*pagep = page;

	if (!FUNC0(page))
		FUNC2(page);
	return 0;
}