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
struct page {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*,struct nfs4_label*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct nfs4_exception*) ; 
 struct nfs4_label* FUNC3 (struct inode*,struct dentry*,struct iattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry,
		struct page *page, unsigned int len, struct iattr *sattr)
{
	struct nfs4_exception exception = {
		.interruptible = true,
	};
	struct nfs4_label l, *label = NULL;
	int err;

	label = FUNC3(dir, dentry, sattr, &l);

	do {
		err = FUNC1(dir, dentry, page, len, sattr, label);
		FUNC5(dir, &dentry->d_name, err);
		err = FUNC2(FUNC0(dir), err,
				&exception);
	} while (exception.retry);

	FUNC4(label);
	return err;
}