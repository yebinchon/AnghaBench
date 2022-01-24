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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSWRITEPAGE ; 
 int /*<<< orphan*/  nfs_async_write_completion_ops ; 
 int FUNC0 (struct page*,struct writeback_control*,struct nfs_pageio_descriptor*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct page *page,
				struct writeback_control *wbc)
{
	struct nfs_pageio_descriptor pgio;
	struct inode *inode = FUNC5(page)->host;
	int err;

	FUNC2(inode, NFSIOS_VFSWRITEPAGE);
	FUNC4(&pgio, inode, 0,
				false, &nfs_async_write_completion_ops);
	err = FUNC0(page, wbc, &pgio);
	pgio.pg_error = 0;
	FUNC3(&pgio);
	if (err < 0)
		return err;
	if (FUNC1(pgio.pg_error))
		return pgio.pg_error;
	return 0;
}