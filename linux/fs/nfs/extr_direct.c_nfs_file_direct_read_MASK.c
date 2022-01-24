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
struct nfs_lock_context {int dummy; } ;
struct nfs_direct_req {size_t bytes_left; size_t max_count; int /*<<< orphan*/  flags; struct kiocb* iocb; struct nfs_lock_context* l_ctx; int /*<<< orphan*/  ctx; scalar_t__ io_start; struct inode* inode; } ;
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  read_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FILE ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  NFSIOS_DIRECTREADBYTES ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NFS_ODIRECT_SHOULD_DIRTY ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct file*,size_t,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kiocb*) ; 
 scalar_t__ FUNC8 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_direct_req*,struct iov_iter*,scalar_t__) ; 
 struct nfs_direct_req* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct file*) ; 
 struct nfs_lock_context* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (size_t) ; 

ssize_t FUNC19(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	struct inode *inode = mapping->host;
	struct nfs_direct_req *dreq;
	struct nfs_lock_context *l_ctx;
	ssize_t result = -EINVAL, requested;
	size_t count = FUNC5(iter);
	FUNC9(mapping->host, NFSIOS_DIRECTREADBYTES, count);

	FUNC3(FILE, "NFS: direct read(%pD2, %zd@%Ld)\n",
		file, count, (long long) iocb->ki_pos);

	result = 0;
	if (!count)
		goto out;

	FUNC18(count);

	result = -ENOMEM;
	dreq = FUNC11();
	if (dreq == NULL)
		goto out;

	dreq->inode = inode;
	dreq->bytes_left = dreq->max_count = count;
	dreq->io_start = iocb->ki_pos;
	dreq->ctx = FUNC4(FUNC15(iocb->ki_filp));
	l_ctx = FUNC16(dreq->ctx);
	if (FUNC0(l_ctx)) {
		result = FUNC2(l_ctx);
		goto out_release;
	}
	dreq->l_ctx = l_ctx;
	if (!FUNC7(iocb))
		dreq->iocb = iocb;

	if (FUNC8(iter))
		dreq->flags = NFS_ODIRECT_SHOULD_DIRTY;

	FUNC17(inode);

	FUNC1(inode)->read_io += count;
	requested = FUNC10(dreq, iter, iocb->ki_pos);

	FUNC14(inode);

	if (requested > 0) {
		result = FUNC13(dreq);
		if (result > 0) {
			requested -= result;
			iocb->ki_pos += result;
		}
		FUNC6(iter, requested);
	} else {
		result = requested;
	}

out_release:
	FUNC12(dreq);
out:
	return result;
}