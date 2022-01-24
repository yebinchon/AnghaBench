#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct inode {int i_mode; void* i_private; struct file_operations const* i_fop; } ;
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_parent; int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  LOCKDOWN_TRACEFS ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dentry*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (char const*,struct dentry*) ; 
 struct file_operations const tracefs_file_operations ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

struct dentry *FUNC11(const char *name, umode_t mode,
				   struct dentry *parent, void *data,
				   const struct file_operations *fops)
{
	struct dentry *dentry;
	struct inode *inode;

	if (FUNC7(LOCKDOWN_TRACEFS))
		return NULL;

	if (!(mode & S_IFMT))
		mode |= S_IFREG;
	FUNC0(!FUNC2(mode));
	dentry = FUNC8(name, parent);

	if (FUNC1(dentry))
		return NULL;

	inode = FUNC9(dentry->d_sb);
	if (FUNC10(!inode))
		return FUNC5(dentry);

	inode->i_mode = mode;
	inode->i_fop = fops ? fops : &tracefs_file_operations;
	inode->i_private = data;
	FUNC3(dentry, inode);
	FUNC6(dentry->d_parent->d_inode, dentry);
	return FUNC4(dentry);
}