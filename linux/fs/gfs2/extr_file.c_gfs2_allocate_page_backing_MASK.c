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
typedef  scalar_t__ u64 ;
struct page {TYPE_1__* mapping; } ;
struct iomap {scalar_t__ length; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,struct iomap*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct page *page)
{
	u64 pos = FUNC2(page);
	u64 size = PAGE_SIZE;

	do {
		struct iomap iomap = { };

		if (FUNC0(page->mapping->host, pos, 1, &iomap))
			return -EIO;

		iomap.length = FUNC1(iomap.length, size);
		size -= iomap.length;
		pos += iomap.length;
	} while (size > 0);

	return 0;
}