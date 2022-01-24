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
typedef  scalar_t__ u32 ;
struct rpc_message {struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_removeres {int /*<<< orphan*/  cinfo; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs_removeargs {int /*<<< orphan*/  seq_args; struct qstr const name; int /*<<< orphan*/  fh; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 scalar_t__ NF4DIR ; 
 size_t NFSPROC4_CLNT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 unsigned long jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, const struct qstr *name, u32 ftype)
{
	struct nfs_server *server = FUNC1(dir);
	struct nfs_removeargs args = {
		.fh = FUNC0(dir),
		.name = *name,
	};
	struct nfs_removeres res = {
		.server = server,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_REMOVE],
		.rpc_argp = &args,
		.rpc_resp = &res,
	};
	unsigned long timestamp = jiffies;
	int status;

	status = FUNC2(server->client, server, &msg, &args.seq_args, &res.seq_res, 1);
	if (status == 0) {
		FUNC4(&dir->i_lock);
		FUNC6(dir, &res.cinfo, timestamp, 0);
		/* Removing a directory decrements nlink in the parent */
		if (ftype == NF4DIR && dir->i_nlink > 2)
			FUNC3(dir);
		FUNC5(&dir->i_lock);
	}
	return status;
}