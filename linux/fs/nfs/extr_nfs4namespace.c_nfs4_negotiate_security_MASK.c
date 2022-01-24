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
struct page {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rpc_clnt* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct qstr const*,struct nfs4_secinfo_flavors*) ; 
 struct rpc_clnt* FUNC4 (struct rpc_clnt*,int /*<<< orphan*/ ,struct nfs4_secinfo_flavors*) ; 
 struct nfs4_secinfo_flavors* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

struct rpc_clnt *
FUNC7(struct rpc_clnt *clnt, struct inode *inode,
					const struct qstr *name)
{
	struct page *page;
	struct nfs4_secinfo_flavors *flavors;
	struct rpc_clnt *new;
	int err;

	page = FUNC2(GFP_KERNEL);
	if (!page)
		return FUNC0(-ENOMEM);

	flavors = FUNC5(page);

	err = FUNC3(inode, name, flavors);
	if (err < 0) {
		new = FUNC0(err);
		goto out;
	}

	new = FUNC4(clnt, FUNC1(inode), flavors);

out:
	FUNC6(page);
	return new;
}