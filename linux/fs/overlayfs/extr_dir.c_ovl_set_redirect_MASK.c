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
struct dentry {int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int EXDEV ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  OVL_XATTR_REDIRECT ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 char* FUNC7 (struct dentry*,int) ; 
 int FUNC8 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry, bool samedir)
{
	int err;
	const char *redirect = FUNC4(dentry);
	bool absolute_redirect = FUNC8(dentry, samedir);

	if (redirect && (!absolute_redirect || redirect[0] == '/'))
		return 0;

	redirect = FUNC7(dentry, absolute_redirect);
	if (FUNC0(redirect))
		return FUNC1(redirect);

	err = FUNC3(dentry, FUNC6(dentry),
				 OVL_XATTR_REDIRECT,
				 redirect, FUNC12(redirect), -EXDEV);
	if (!err) {
		FUNC10(&dentry->d_lock);
		FUNC5(dentry, redirect);
		FUNC11(&dentry->d_lock);
	} else {
		FUNC2(redirect);
		FUNC9("overlayfs: failed to set redirect (%i)\n",
				    err);
		/* Fall back to userspace copy-up */
		err = -EXDEV;
	}
	return err;
}