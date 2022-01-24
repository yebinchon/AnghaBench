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
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct page*,int,int) ; 
 int FUNC2 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct page *page)
{
	int ret = -EAGAIN;
	struct inode *inode = page->mapping->host;

	FUNC3(page);

	if (FUNC0(inode))
		ret = FUNC2(inode, page);

	if (ret == -EAGAIN)
		return FUNC1(page->mapping, NULL, page, 1,
						false);

	return ret;
}