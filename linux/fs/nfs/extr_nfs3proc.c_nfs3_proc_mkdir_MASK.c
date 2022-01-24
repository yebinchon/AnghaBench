#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct posix_acl {int dummy; } ;
struct TYPE_7__ {struct iattr* sattr; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
struct TYPE_8__ {TYPE_3__ mkdir; } ;
struct TYPE_5__ {int /*<<< orphan*/ * rpc_proc; } ;
struct nfs3_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int /*<<< orphan*/  ia_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_MKDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct nfs3_createdata* FUNC5 () ; 
 struct dentry* FUNC6 (struct inode*,struct dentry*,struct nfs3_createdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs3_createdata*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC10 (struct posix_acl*) ; 

__attribute__((used)) static int
FUNC11(struct inode *dir, struct dentry *dentry, struct iattr *sattr)
{
	struct posix_acl *default_acl, *acl;
	struct nfs3_createdata *data;
	struct dentry *d_alias;
	int status = -ENOMEM;

	FUNC3("NFS call  mkdir %pd\n", dentry);

	data = FUNC5();
	if (data == NULL)
		goto out;

	status = FUNC9(dir, &sattr->ia_mode, &default_acl, &acl);
	if (status)
		goto out;

	data->msg.rpc_proc = &nfs3_procedures[NFS3PROC_MKDIR];
	data->arg.mkdir.fh = FUNC0(dir);
	data->arg.mkdir.name = dentry->d_name.name;
	data->arg.mkdir.len = dentry->d_name.len;
	data->arg.mkdir.sattr = sattr;

	d_alias = FUNC6(dir, dentry, data);
	status = FUNC1(d_alias);

	if (status != 0)
		goto out_release_acls;

	if (d_alias)
		dentry = d_alias;

	status = FUNC8(FUNC2(dentry), acl, default_acl);

	FUNC4(d_alias);
out_release_acls:
	FUNC10(acl);
	FUNC10(default_acl);
out:
	FUNC7(data);
	FUNC3("NFS reply mkdir: %d\n", status);
	return status;
}