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
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_WRITE_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int FUNC6 (struct address_space*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct page**,void**,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct address_space *mapping,
			     loff_t pos, unsigned len, unsigned flags,
			     struct page **pagep, void **fsdata)
{
	int ret;
	struct buffer_head *di_bh = NULL;
	struct inode *inode = mapping->host;

	ret = FUNC4(inode, &di_bh, 1);
	if (ret) {
		FUNC3(ret);
		return ret;
	}

	/*
	 * Take alloc sem here to prevent concurrent lookups. That way
	 * the mapping, zeroing and tree manipulation within
	 * ocfs2_write() will be safe against ->readpage(). This
	 * should also serve to lock out allocation from a shared
	 * writeable region.
	 */
	FUNC2(&FUNC0(inode)->ip_alloc_sem);

	ret = FUNC6(mapping, pos, len, OCFS2_WRITE_BUFFER,
				       pagep, fsdata, di_bh, NULL);
	if (ret) {
		FUNC3(ret);
		goto out_fail;
	}

	FUNC1(di_bh);

	return 0;

out_fail:
	FUNC7(&FUNC0(inode)->ip_alloc_sem);

	FUNC1(di_bh);
	FUNC5(inode, 1);

	return ret;
}