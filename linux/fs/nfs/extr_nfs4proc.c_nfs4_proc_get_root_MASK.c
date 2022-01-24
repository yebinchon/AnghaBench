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
struct nfs_server {int /*<<< orphan*/  fsid; } ;
struct nfs_fsinfo {struct nfs_fattr* fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int valid; int /*<<< orphan*/  fsid; } ;
struct nfs4_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfs4_label*) ; 
 int NFS_ATTR_FATTR_FSID ; 
 int FUNC1 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nfs4_label* FUNC4 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_label*) ; 
 int FUNC6 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct nfs_server*,struct nfs_fh*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct nfs_server *server, struct nfs_fh *mntfh,
			      struct nfs_fsinfo *info)
{
	int error;
	struct nfs_fattr *fattr = info->fattr;
	struct nfs4_label *label = NULL;

	error = FUNC7(server, mntfh);
	if (error < 0) {
		FUNC2("nfs4_get_root: getcaps error = %d\n", -error);
		return error;
	}

	label = FUNC4(server, GFP_KERNEL);
	if (FUNC0(label))
		return FUNC1(label);

	error = FUNC6(server, mntfh, fattr, label, NULL);
	if (error < 0) {
		FUNC2("nfs4_get_root: getattr error = %d\n", -error);
		goto err_free_label;
	}

	if (fattr->valid & NFS_ATTR_FATTR_FSID &&
	    !FUNC8(&server->fsid, &fattr->fsid))
		FUNC3(&server->fsid, &fattr->fsid, sizeof(server->fsid));

err_free_label:
	FUNC5(label);

	return error;
}