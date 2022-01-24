#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct page*,int,int) ; 
 int FUNC2 (struct inode*,struct page*) ; 
 TYPE_1__* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct page *page)
{
	struct inode *inode = FUNC3(page)->host;
	int ret = -EAGAIN;

	FUNC4(page, DATA);

	/* If the file has inline data, try to read it directly */
	if (FUNC0(inode))
		ret = FUNC2(inode, page);
	if (ret == -EAGAIN)
		ret = FUNC1(FUNC3(page),
						NULL, page, 1, false);
	return ret;
}