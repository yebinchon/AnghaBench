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
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  rdev; struct iattr* sattr; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
struct TYPE_8__ {TYPE_3__ mknod; } ;
struct TYPE_5__ {int /*<<< orphan*/ * rpc_proc; } ;
struct nfs3_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF3BLK ; 
 int /*<<< orphan*/  NF3CHR ; 
 int /*<<< orphan*/  NF3FIFO ; 
 int /*<<< orphan*/  NF3SOCK ; 
 size_t NFS3PROC_MKNOD ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*) ; 
#define  S_IFBLK 131 
#define  S_IFCHR 130 
#define  S_IFIFO 129 
 int S_IFMT ; 
#define  S_IFSOCK 128 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct nfs3_createdata* FUNC7 () ; 
 struct dentry* FUNC8 (struct inode*,struct dentry*,struct nfs3_createdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs3_createdata*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int FUNC11 (struct inode*,int*,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC12 (struct posix_acl*) ; 

__attribute__((used)) static int
FUNC13(struct inode *dir, struct dentry *dentry, struct iattr *sattr,
		dev_t rdev)
{
	struct posix_acl *default_acl, *acl;
	struct nfs3_createdata *data;
	struct dentry *d_alias;
	int status = -ENOMEM;

	FUNC5("NFS call  mknod %pd %u:%u\n", dentry,
			FUNC0(rdev), FUNC1(rdev));

	data = FUNC7();
	if (data == NULL)
		goto out;

	status = FUNC11(dir, &sattr->ia_mode, &default_acl, &acl);
	if (status)
		goto out;

	data->msg.rpc_proc = &nfs3_procedures[NFS3PROC_MKNOD];
	data->arg.mknod.fh = FUNC2(dir);
	data->arg.mknod.name = dentry->d_name.name;
	data->arg.mknod.len = dentry->d_name.len;
	data->arg.mknod.sattr = sattr;
	data->arg.mknod.rdev = rdev;

	switch (sattr->ia_mode & S_IFMT) {
	case S_IFBLK:
		data->arg.mknod.type = NF3BLK;
		break;
	case S_IFCHR:
		data->arg.mknod.type = NF3CHR;
		break;
	case S_IFIFO:
		data->arg.mknod.type = NF3FIFO;
		break;
	case S_IFSOCK:
		data->arg.mknod.type = NF3SOCK;
		break;
	default:
		status = -EINVAL;
		goto out;
	}

	d_alias = FUNC8(dir, dentry, data);
	status = FUNC3(d_alias);
	if (status != 0)
		goto out_release_acls;

	if (d_alias)
		dentry = d_alias;

	status = FUNC10(FUNC4(dentry), acl, default_acl);

	FUNC6(d_alias);
out_release_acls:
	FUNC12(acl);
	FUNC12(default_acl);
out:
	FUNC9(data);
	FUNC5("NFS reply mknod: %d\n", status);
	return status;
}