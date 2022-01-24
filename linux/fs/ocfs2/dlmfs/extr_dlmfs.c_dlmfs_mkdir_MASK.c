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
typedef  int umode_t ;
struct qstr {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct ocfs2_cluster_connection {int dummy; } ;
struct inode {int dummy; } ;
struct dlmfs_inode_private {struct ocfs2_cluster_connection* ip_conn; } ;
struct dentry {struct qstr d_name; } ;

/* Variables and functions */
 struct dlmfs_inode_private* FUNC0 (struct inode*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ GROUP_NAME_MAX ; 
 scalar_t__ FUNC1 (struct ocfs2_cluster_connection*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC2 (struct ocfs2_cluster_connection*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct ocfs2_cluster_connection* FUNC10 (struct qstr const*) ; 

__attribute__((used)) static int FUNC11(struct inode * dir,
		       struct dentry * dentry,
		       umode_t mode)
{
	int status;
	struct inode *inode = NULL;
	const struct qstr *domain = &dentry->d_name;
	struct dlmfs_inode_private *ip;
	struct ocfs2_cluster_connection *conn;

	FUNC8(0, "mkdir %.*s\n", domain->len, domain->name);

	/* verify that we have a proper domain */
	if (domain->len >= GROUP_NAME_MAX) {
		status = -EINVAL;
		FUNC8(ML_ERROR, "invalid domain name for directory.\n");
		goto bail;
	}

	inode = FUNC5(dir, dentry, mode | S_IFDIR);
	if (!inode) {
		status = -ENOMEM;
		FUNC9(status);
		goto bail;
	}

	ip = FUNC0(inode);

	conn = FUNC10(domain);
	if (FUNC1(conn)) {
		status = FUNC2(conn);
		FUNC8(ML_ERROR, "Error %d could not register domain \"%.*s\"\n",
		     status, domain->len, domain->name);
		goto bail;
	}
	ip->ip_conn = conn;

	FUNC6(dir);
	FUNC3(dentry, inode);
	FUNC4(dentry);	/* Extra count - pin the dentry in core */

	status = 0;
bail:
	if (status < 0)
		FUNC7(inode);
	return status;
}