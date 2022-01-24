#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct qstr {int dummy; } ;
struct nfs_server {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fattr; int /*<<< orphan*/  label; int /*<<< orphan*/ * fh; struct nfs_server* server; } ;
struct TYPE_5__ {int /*<<< orphan*/  umask; int /*<<< orphan*/  bitmask; int /*<<< orphan*/  ftype; struct iattr* attrs; struct qstr const* name; struct nfs_server* server; int /*<<< orphan*/  dir_fh; } ;
struct TYPE_4__ {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs4_createdata {TYPE_3__ res; int /*<<< orphan*/  label; int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; TYPE_2__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NFSPROC4_CLNT_CREATE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct nfs_server* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_createdata*) ; 
 struct nfs4_createdata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_createdata *FUNC9(struct inode *dir,
		const struct qstr *name, struct iattr *sattr, u32 ftype)
{
	struct nfs4_createdata *data;

	data = FUNC5(sizeof(*data), GFP_KERNEL);
	if (data != NULL) {
		struct nfs_server *server = FUNC2(dir);

		data->label = FUNC7(server, GFP_KERNEL);
		if (FUNC0(data->label))
			goto out_free;

		data->msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_CREATE];
		data->msg.rpc_argp = &data->arg;
		data->msg.rpc_resp = &data->res;
		data->arg.dir_fh = FUNC1(dir);
		data->arg.server = server;
		data->arg.name = name;
		data->arg.attrs = sattr;
		data->arg.ftype = ftype;
		data->arg.bitmask = FUNC6(server, data->label);
		data->arg.umask = FUNC3();
		data->res.server = server;
		data->res.fh = &data->fh;
		data->res.fattr = &data->fattr;
		data->res.label = data->label;
		FUNC8(data->res.fattr);
	}
	return data;
out_free:
	FUNC4(data);
	return NULL;
}