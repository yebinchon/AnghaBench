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
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct nfs_fh *fhandle,
			     struct nfs_fattr *fattr, struct nfs4_label *label)
{
	struct nfs4_exception exception = {
		.interruptible = true,
	};
	int err;
	do {
		err = FUNC1(inode, fhandle, fattr, label);
		FUNC3(inode, err);
		err = FUNC2(FUNC0(inode), err,
				&exception);
	} while (exception.retry);
	return err;
}