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
struct inode {int dummy; } ;
struct TYPE_2__ {int (* readlink ) (struct inode*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EIO ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct inode*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(void *data, struct page *page)
{
	struct inode *inode = data;
	int error;

	error = FUNC0(inode)->readlink(inode, page, 0, PAGE_SIZE);
	if (error < 0)
		goto error;
	FUNC2(page);
	FUNC4(page);
	return 0;

error:
	FUNC1(page);
	FUNC4(page);
	return -EIO;
}