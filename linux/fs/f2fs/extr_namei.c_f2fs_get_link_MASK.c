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
 int /*<<< orphan*/  ENOENT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct delayed_call*) ; 
 int /*<<< orphan*/  FUNC3 (struct delayed_call*) ; 
 char* FUNC4 (struct dentry*,struct inode*,struct delayed_call*) ; 

__attribute__((used)) static const char *FUNC5(struct dentry *dentry,
				 struct inode *inode,
				 struct delayed_call *done)
{
	const char *link = FUNC4(dentry, inode, done);
	if (!FUNC1(link) && !*link) {
		/* this is broken symlink case */
		FUNC3(done);
		FUNC2(done);
		link = FUNC0(-ENOENT);
	}
	return link;
}