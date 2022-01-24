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
struct path {int /*<<< orphan*/  dentry; } ;
struct nameidata {int dummy; } ;
struct filename {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INODE_NOEVAL ; 
 int ECHILD ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (struct filename*) ; 
 unsigned int LOOKUP_RCU ; 
 unsigned int LOOKUP_REVAL ; 
 int FUNC1 (struct filename*) ; 
 int /*<<< orphan*/  FUNC2 (struct filename*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct nameidata*,unsigned int,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct filename*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*,int,struct filename*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(int dfd, struct filename *name, struct path *path,
			unsigned int flags)
{
	struct nameidata nd;
	int error;
	if (FUNC0(name))
		return FUNC1(name);
	FUNC7(&nd, dfd, name);
	error = FUNC4(&nd, flags | LOOKUP_RCU, path);
	if (FUNC8(error == -ECHILD))
		error = FUNC4(&nd, flags, path);
	if (FUNC8(error == -ESTALE))
		error = FUNC4(&nd, flags | LOOKUP_REVAL, path);
	if (FUNC3(!error))
		FUNC2(name, path->dentry, AUDIT_INODE_NOEVAL);
	FUNC6();
	FUNC5(name);
	return error;
}