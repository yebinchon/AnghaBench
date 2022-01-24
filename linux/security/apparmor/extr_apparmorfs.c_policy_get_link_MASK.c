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
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct aa_ns {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct aa_ns* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct aa_ns*) ; 
 int /*<<< orphan*/  aafs_mnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_ns*) ; 

__attribute__((used)) static const char *FUNC7(struct dentry *dentry,
				   struct inode *inode,
				   struct delayed_call *done)
{
	struct aa_ns *ns;
	struct path path;

	if (!dentry)
		return FUNC0(-ECHILD);
	ns = FUNC1();
	path.mnt = FUNC4(aafs_mnt);
	path.dentry = FUNC3(FUNC6(ns));
	FUNC5(&path);
	FUNC2(ns);

	return NULL;
}