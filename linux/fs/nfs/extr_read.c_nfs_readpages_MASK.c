#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_readdesc {int /*<<< orphan*/ * ctx; struct nfs_pageio_descriptor* pgio; } ;
struct nfs_pgio_mirror {int pg_bytes_written; } ;
struct nfs_pageio_descriptor {int pg_mirror_count; struct nfs_pgio_mirror* pg_mirrors; } ;
struct list_head {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {int read_io; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int EBADF ; 
 int ESTALE ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  NFSIOS_READPAGES ; 
 int /*<<< orphan*/  NFSIOS_VFSREADPAGES ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  nfs_async_read_completion_ops ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int /*<<< orphan*/ * FUNC8 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_pageio_descriptor*,struct inode*,int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct inode*,struct address_space*,struct list_head*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct address_space*,struct list_head*,int /*<<< orphan*/ ,struct nfs_readdesc*) ; 
 int /*<<< orphan*/  readpage_async_filler ; 

int FUNC15(struct file *filp, struct address_space *mapping,
		struct list_head *pages, unsigned nr_pages)
{
	struct nfs_pageio_descriptor pgio;
	struct nfs_pgio_mirror *pgm;
	struct nfs_readdesc desc = {
		.pgio = &pgio,
	};
	struct inode *inode = mapping->host;
	unsigned long npages;
	int ret = -ESTALE;

	FUNC4("NFS: nfs_readpages (%s/%Lu %d)\n",
			inode->i_sb->s_id,
			(unsigned long long)FUNC0(inode),
			nr_pages);
	FUNC9(inode, NFSIOS_VFSREADPAGES);

	if (FUNC2(inode))
		goto out;

	if (filp == NULL) {
		desc.ctx = FUNC8(inode, NULL, FMODE_READ);
		if (desc.ctx == NULL)
			return -EBADF;
	} else
		desc.ctx = FUNC5(FUNC7(filp));

	/* attempt to read as many of the pages as possible from the cache
	 * - this returns -ENOBUFS immediately if the cookie is negative
	 */
	ret = FUNC12(desc.ctx, inode, mapping,
					 pages, &nr_pages);
	if (ret == 0)
		goto read_complete; /* all pages were read */

	FUNC11(&pgio, inode, false,
			     &nfs_async_read_completion_ops);

	ret = FUNC14(mapping, pages, readpage_async_filler, &desc);
	FUNC10(&pgio);

	/* It doesn't make sense to do mirrored reads! */
	FUNC3(pgio.pg_mirror_count != 1);

	pgm = &pgio.pg_mirrors[0];
	FUNC1(inode)->read_io += pgm->pg_bytes_written;
	npages = (pgm->pg_bytes_written + PAGE_SIZE - 1) >>
		 PAGE_SHIFT;
	FUNC6(inode, NFSIOS_READPAGES, npages);
read_complete:
	FUNC13(desc.ctx);
out:
	return ret;
}