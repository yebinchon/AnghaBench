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
struct delayed_call {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct cred* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,struct delayed_call*) ; 

__attribute__((used)) static const char *FUNC5(struct dentry *dentry,
				struct inode *inode,
				struct delayed_call *done)
{
	const struct cred *old_cred;
	const char *p;

	if (!dentry)
		return FUNC0(-ECHILD);

	old_cred = FUNC2(dentry->d_sb);
	p = FUNC4(FUNC1(dentry), done);
	FUNC3(old_cred);
	return p;
}