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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 

int FUNC4(struct dentry *dentry, struct nfs_fh *fhandle,
				struct nfs_fattr *fattr,
				struct nfs4_label *label)
{
	struct dentry *d;

	d = FUNC3(dentry, fhandle, fattr, label);
	if (FUNC0(d))
		return FUNC1(d);

	/* Callers don't care */
	FUNC2(d);
	return 0;
}