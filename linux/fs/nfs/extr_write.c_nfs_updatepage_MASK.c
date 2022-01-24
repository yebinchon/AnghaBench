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
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSUPDATEPAGE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,long long,...) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct file*,struct page*,struct inode*) ; 
 struct nfs_open_context* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*) ; 
 int FUNC9 (struct nfs_open_context*,struct page*,unsigned int,unsigned int) ; 
 struct address_space* FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 

int FUNC12(struct file *file, struct page *page,
		unsigned int offset, unsigned int count)
{
	struct nfs_open_context *ctx = FUNC5(file);
	struct address_space *mapping = FUNC10(page);
	struct inode	*inode = mapping->host;
	int		status = 0;

	FUNC6(inode, NFSIOS_VFSUPDATEPAGE);

	FUNC1("NFS:       nfs_updatepage(%pD2 %d@%lld)\n",
		file, count, (long long)(FUNC11(page) + offset));

	if (!count)
		goto out;

	if (FUNC4(file, page, inode)) {
		count = FUNC3(count + offset, FUNC7(page));
		offset = 0;
	}

	status = FUNC9(ctx, page, offset, count);
	if (status < 0)
		FUNC8(mapping);
	else
		FUNC0(page);
out:
	FUNC1("NFS:       nfs_updatepage returns %d (isize %lld)\n",
			status, (long long)FUNC2(inode));
	return status;
}