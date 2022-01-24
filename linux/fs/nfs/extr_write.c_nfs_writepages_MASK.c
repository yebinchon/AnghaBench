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
struct writeback_control {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; struct nfs_io_completion* pg_io_completion; } ;
struct nfs_io_completion {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFSIOS_VFSWRITEPAGES ; 
 int /*<<< orphan*/  nfs_async_write_completion_ops ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 struct nfs_io_completion* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_io_completion_commit ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_io_completion*,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_io_completion*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_writepages_callback ; 
 int /*<<< orphan*/  FUNC7 (struct writeback_control*) ; 
 int FUNC8 (struct address_space*,struct writeback_control*,int /*<<< orphan*/ ,struct nfs_pageio_descriptor*) ; 

int FUNC9(struct address_space *mapping, struct writeback_control *wbc)
{
	struct inode *inode = mapping->host;
	struct nfs_pageio_descriptor pgio;
	struct nfs_io_completion *ioc;
	int err;

	FUNC1(inode, NFSIOS_VFSWRITEPAGES);

	ioc = FUNC2(GFP_KERNEL);
	if (ioc)
		FUNC3(ioc, nfs_io_completion_commit, inode);

	FUNC6(&pgio, inode, FUNC7(wbc), false,
				&nfs_async_write_completion_ops);
	pgio.pg_io_completion = ioc;
	err = FUNC8(mapping, wbc, nfs_writepages_callback, &pgio);
	pgio.pg_error = 0;
	FUNC5(&pgio);
	FUNC4(ioc);

	if (err < 0)
		goto out_err;
	err = pgio.pg_error;
	if (FUNC0(err))
		goto out_err;
	return 0;
out_err:
	return err;
}