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
struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct rpc_clnt* FUNC0 (struct inode*) ; 
 int FUNC1 (struct rpc_clnt**,struct inode*,struct qstr const*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_clnt*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, const struct qstr *name,
			    struct nfs_fh *fhandle, struct nfs_fattr *fattr,
			    struct nfs4_label *label)
{
	int status;
	struct rpc_clnt *client = FUNC0(dir);

	status = FUNC1(&client, dir, name, fhandle, fattr, label);
	if (client != FUNC0(dir)) {
		FUNC3(client);
		FUNC2(fattr);
	}
	return status;
}