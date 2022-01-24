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
typedef  int u32 ;
struct tree_descr {int dummy; } ;
struct nfsdfs_client {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  nfsd_client_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,struct nfsdfs_client*,char*) ; 
 int FUNC3 (struct dentry*,struct tree_descr const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

struct dentry *FUNC5(struct nfsd_net *nn,
		struct nfsdfs_client *ncl, u32 id,
		const struct tree_descr *files)
{
	struct dentry *dentry;
	char name[11];
	int ret;

	FUNC4(name, "%u", id);

	dentry = FUNC2(nn->nfsd_client_dir, ncl, name);
	if (FUNC0(dentry)) /* XXX: tossing errors? */
		return NULL;
	ret = FUNC3(dentry, files);
	if (ret) {
		FUNC1(dentry);
		return NULL;
	}
	return dentry;
}