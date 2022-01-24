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
struct nfs_server {int dummy; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct nfs4_exception {int retry; int /*<<< orphan*/  state; int /*<<< orphan*/ * stateid; int /*<<< orphan*/  inode; } ;
struct nfs42_copy_res {int dummy; } ;
struct nfs42_copy_args {size_t count; int sync; int /*<<< orphan*/  dst_stateid; int /*<<< orphan*/  src_stateid; int /*<<< orphan*/  dst_pos; int /*<<< orphan*/  dst_fh; int /*<<< orphan*/  src_pos; int /*<<< orphan*/  src_fh; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  NFS4ERR_OFFLOAD_NO_REQS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_server* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct nfs_lock_context*,struct file*,struct nfs_lock_context*,struct nfs42_copy_args*,struct nfs42_copy_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 struct nfs_lock_context* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_lock_context*) ; 

ssize_t FUNC12(struct file *src, loff_t pos_src,
			struct file *dst, loff_t pos_dst,
			size_t count)
{
	struct nfs_server *server = FUNC2(FUNC5(dst));
	struct nfs_lock_context *src_lock;
	struct nfs_lock_context *dst_lock;
	struct nfs42_copy_args args = {
		.src_fh		= FUNC1(FUNC5(src)),
		.src_pos	= pos_src,
		.dst_fh		= FUNC1(FUNC5(dst)),
		.dst_pos	= pos_dst,
		.count		= count,
		.sync		= false,
	};
	struct nfs42_copy_res res;
	struct nfs4_exception src_exception = {
		.inode		= FUNC5(src),
		.stateid	= &args.src_stateid,
	};
	struct nfs4_exception dst_exception = {
		.inode		= FUNC5(dst),
		.stateid	= &args.dst_stateid,
	};
	ssize_t err, err2;

	src_lock = FUNC10(FUNC9(src));
	if (FUNC0(src_lock))
		return FUNC3(src_lock);

	src_exception.state = src_lock->open_context->state;

	dst_lock = FUNC10(FUNC9(dst));
	if (FUNC0(dst_lock)) {
		err = FUNC3(dst_lock);
		goto out_put_src_lock;
	}

	dst_exception.state = dst_lock->open_context->state;

	do {
		FUNC6(FUNC5(dst));
		err = FUNC4(src, src_lock,
				dst, dst_lock,
				&args, &res);
		FUNC7(FUNC5(dst));

		if (err >= 0)
			break;
		if (err == -ENOTSUPP) {
			err = -EOPNOTSUPP;
			break;
		} else if (err == -EAGAIN) {
			dst_exception.retry = 1;
			continue;
		} else if (err == -NFS4ERR_OFFLOAD_NO_REQS && !args.sync) {
			args.sync = true;
			dst_exception.retry = 1;
			continue;
		}

		err2 = FUNC8(server, err, &src_exception);
		err  = FUNC8(server, err, &dst_exception);
		if (!err)
			err = err2;
	} while (src_exception.retry || dst_exception.retry);

	FUNC11(dst_lock);
out_put_src_lock:
	FUNC11(src_lock);
	return err;
}