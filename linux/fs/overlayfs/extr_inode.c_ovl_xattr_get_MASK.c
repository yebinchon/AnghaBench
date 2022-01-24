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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct cred* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 int FUNC4 (struct dentry*,char const*,void*,size_t) ; 

int FUNC5(struct dentry *dentry, struct inode *inode, const char *name,
		  void *value, size_t size)
{
	ssize_t res;
	const struct cred *old_cred;
	struct dentry *realdentry =
		FUNC1(inode) ?: FUNC0(dentry);

	old_cred = FUNC2(dentry->d_sb);
	res = FUNC4(realdentry, name, value, size);
	FUNC3(old_cred);
	return res;
}