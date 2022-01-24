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
struct rpc_message {int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  caps; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct nfs4_exception {scalar_t__ retry; int /*<<< orphan*/  state; struct inode* inode; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 size_t NFSPROC4_CLNT_CLONE ; 
 int /*<<< orphan*/  NFS_CAP_CLONE ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (struct nfs_lock_context*) ; 
 int FUNC3 (struct rpc_message*,struct file*,struct file*,struct nfs_lock_context*,struct nfs_lock_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct nfs_server*,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 struct nfs_lock_context* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC10(struct file *src_f, struct file *dst_f,
		     loff_t src_offset, loff_t dst_offset, loff_t count)
{
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_CLONE],
	};
	struct inode *inode = FUNC4(src_f);
	struct nfs_server *server = FUNC1(FUNC4(src_f));
	struct nfs_lock_context *src_lock;
	struct nfs_lock_context *dst_lock;
	struct nfs4_exception src_exception = { };
	struct nfs4_exception dst_exception = { };
	int err, err2;

	if (!FUNC9(inode, NFS_CAP_CLONE))
		return -EOPNOTSUPP;

	src_lock = FUNC7(FUNC6(src_f));
	if (FUNC0(src_lock))
		return FUNC2(src_lock);

	src_exception.inode = FUNC4(src_f);
	src_exception.state = src_lock->open_context->state;

	dst_lock = FUNC7(FUNC6(dst_f));
	if (FUNC0(dst_lock)) {
		err = FUNC2(dst_lock);
		goto out_put_src_lock;
	}

	dst_exception.inode = FUNC4(dst_f);
	dst_exception.state = dst_lock->open_context->state;

	do {
		err = FUNC3(&msg, src_f, dst_f, src_lock, dst_lock,
					src_offset, dst_offset, count);
		if (err == -ENOTSUPP || err == -EOPNOTSUPP) {
			FUNC1(inode)->caps &= ~NFS_CAP_CLONE;
			err = -EOPNOTSUPP;
			break;
		}

		err2 = FUNC5(server, err, &src_exception);
		err = FUNC5(server, err, &dst_exception);
		if (!err)
			err = err2;
	} while (src_exception.retry || dst_exception.retry);

	FUNC8(dst_lock);
out_put_src_lock:
	FUNC8(src_lock);
	return err;
}