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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct page *page)
{
	struct inode *inode = page->mapping->host;
	if (FUNC3(inode)) {
		FUNC0(page);
		return FUNC2(page);
	}
	return FUNC1(page);
}