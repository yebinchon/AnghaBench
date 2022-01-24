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
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EPERM ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (struct dentry*,struct inode*,struct delayed_call*) ; 

__attribute__((used)) static const char *
FUNC3(struct dentry *dentry,
			struct inode *inode,
		        struct delayed_call *done)
{
	if (!FUNC1(CAP_SYS_ADMIN))
		return FUNC0(-EPERM);

	return FUNC2(dentry, inode, done);
}