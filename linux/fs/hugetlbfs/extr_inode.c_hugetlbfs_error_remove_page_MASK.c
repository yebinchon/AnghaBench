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
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct address_space *mapping,
				struct page *page)
{
	struct inode *inode = mapping->host;
	pgoff_t index = page->index;

	FUNC2(page);
	if (FUNC3(FUNC1(inode, index, index + 1, 1)))
		FUNC0(inode);

	return 0;
}