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
struct nfs_server {int /*<<< orphan*/  caps; } ;
struct TYPE_3__ {scalar_t__ before; scalar_t__ after; } ;
struct nfs_openres {int rflags; int /*<<< orphan*/  f_label; TYPE_2__* f_attr; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_res; TYPE_1__ cinfo; } ;
struct nfs_openargs {int open_flags; } ;
struct nfs_open_context {int dummy; } ;
struct nfs4_opendata {int file_created; int /*<<< orphan*/  f_attr; int /*<<< orphan*/  rpc_done; struct nfs_openres o_res; struct nfs_openargs o_arg; int /*<<< orphan*/  dir; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int valid; int /*<<< orphan*/  time_start; } ;

/* Variables and functions */
 int ENOENT ; 
 int NFS4ERR_BADNAME ; 
 int NFS4_OPEN_RESULT_CONFIRM ; 
 int NFS4_OPEN_RESULT_LOCKTYPE_POSIX ; 
 int NFS_ATTR_FATTR ; 
 int /*<<< orphan*/  NFS_CAP_POSIX_LOCK ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int FUNC1 (struct nfs4_opendata*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nfs4_opendata*,struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nfs4_opendata *data,
			   struct nfs_open_context *ctx)
{
	struct inode *dir = FUNC2(data->dir);
	struct nfs_server *server = FUNC0(dir);
	struct nfs_openargs *o_arg = &data->o_arg;
	struct nfs_openres *o_res = &data->o_res;
	int status;

	status = FUNC5(data, ctx);
	if (!data->rpc_done)
		return status;
	if (status != 0) {
		if (status == -NFS4ERR_BADNAME &&
				!(o_arg->open_flags & O_CREAT))
			return -ENOENT;
		return status;
	}

	FUNC7(server, &data->f_attr);

	if (o_arg->open_flags & O_CREAT) {
		if (o_arg->open_flags & O_EXCL)
			data->file_created = true;
		else if (o_res->cinfo.before != o_res->cinfo.after)
			data->file_created = true;
		if (data->file_created ||
		    FUNC3(dir) != o_res->cinfo.after)
			FUNC8(dir, &o_res->cinfo,
					o_res->f_attr->time_start, 0);
	}
	if ((o_res->rflags & NFS4_OPEN_RESULT_LOCKTYPE_POSIX) == 0)
		server->caps &= ~NFS_CAP_POSIX_LOCK;
	if(o_res->rflags & NFS4_OPEN_RESULT_CONFIRM) {
		status = FUNC1(data);
		if (status != 0)
			return status;
	}
	if (!(o_res->f_attr->valid & NFS_ATTR_FATTR)) {
		FUNC6(&o_res->seq_res);
		FUNC4(server, &o_res->fh, o_res->f_attr,
				o_res->f_label, NULL);
	}
	return 0;
}