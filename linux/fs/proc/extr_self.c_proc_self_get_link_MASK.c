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
struct pid_namespace {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  kfree_link ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pid_namespace* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static const char *FUNC7(struct dentry *dentry,
				      struct inode *inode,
				      struct delayed_call *done)
{
	struct pid_namespace *ns = FUNC2(inode);
	pid_t tgid = FUNC5(current, ns);
	char *name;

	if (!tgid)
		return FUNC0(-ENOENT);
	/* max length of unsigned int in decimal + NULL term */
	name = FUNC1(10 + 1, dentry ? GFP_KERNEL : GFP_ATOMIC);
	if (FUNC6(!name))
		return dentry ? FUNC0(-ENOMEM) : FUNC0(-ECHILD);
	FUNC4(name, "%u", tgid);
	FUNC3(done, kfree_link, name);
	return name;
}