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
struct nfs_lock_context {int dummy; } ;
struct nfs_direct_req {size_t bytes_left; size_t max_count; int io_start; struct kiocb* iocb; struct nfs_lock_context* l_ctx; int /*<<< orphan*/  ctx; struct inode* inode; } ;
struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {scalar_t__ nrpages; struct inode* host; } ;
typedef  int ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILE ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  NFSIOS_DIRECTWRITTENBYTES ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct file*,int,long long) ; 
 int FUNC3 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*,int,int) ; 
 int FUNC7 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct iov_iter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,size_t) ; 
 struct nfs_direct_req* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_direct_req*) ; 
 int FUNC13 (struct nfs_direct_req*) ; 
 int FUNC14 (struct nfs_direct_req*,struct iov_iter*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct file*) ; 
 struct nfs_lock_context* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (size_t) ; 

ssize_t FUNC20(struct kiocb *iocb, struct iov_iter *iter)
{
	ssize_t result = -EINVAL, requested;
	size_t count;
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	struct inode *inode = mapping->host;
	struct nfs_direct_req *dreq;
	struct nfs_lock_context *l_ctx;
	loff_t pos, end;

	FUNC2(FILE, "NFS: direct write(%pD2, %zd@%Ld)\n",
		file, FUNC7(iter), (long long) iocb->ki_pos);

	result = FUNC3(iocb, iter);
	if (result <= 0)
		return result;
	count = result;
	FUNC10(mapping->host, NFSIOS_DIRECTWRITTENBYTES, count);

	pos = iocb->ki_pos;
	end = (pos + FUNC7(iter) - 1) >> PAGE_SHIFT;

	FUNC19(count);

	result = -ENOMEM;
	dreq = FUNC11();
	if (!dreq)
		goto out;

	dreq->inode = inode;
	dreq->bytes_left = dreq->max_count = count;
	dreq->io_start = pos;
	dreq->ctx = FUNC5(FUNC16(iocb->ki_filp));
	l_ctx = FUNC17(dreq->ctx);
	if (FUNC0(l_ctx)) {
		result = FUNC1(l_ctx);
		goto out_release;
	}
	dreq->l_ctx = l_ctx;
	if (!FUNC9(iocb))
		dreq->iocb = iocb;

	FUNC18(inode);

	requested = FUNC14(dreq, iter, pos);

	if (mapping->nrpages) {
		FUNC6(mapping,
					      pos >> PAGE_SHIFT, end);
	}

	FUNC15(inode);

	if (requested > 0) {
		result = FUNC13(dreq);
		if (result > 0) {
			requested -= result;
			iocb->ki_pos = pos + result;
			/* XXX: should check the generic_write_sync retval */
			FUNC4(iocb, result);
		}
		FUNC8(iter, requested);
	} else {
		result = requested;
	}
out_release:
	FUNC12(dreq);
out:
	return result;
}