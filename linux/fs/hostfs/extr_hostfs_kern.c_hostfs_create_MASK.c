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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int fd; int mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 char* FUNC5 (struct dentry*) ; 
 int FUNC6 (char*,int) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,char*) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *dentry, umode_t mode,
			 bool excl)
{
	struct inode *inode;
	char *name;
	int error, fd;

	inode = FUNC7(dir->i_sb);
	if (FUNC1(inode)) {
		error = FUNC2(inode);
		goto out;
	}

	error = -ENOMEM;
	name = FUNC5(dentry);
	if (name == NULL)
		goto out_put;

	fd = FUNC6(name, mode & 0777);
	if (fd < 0)
		error = fd;
	else
		error = FUNC9(inode, name);

	FUNC3(name);
	if (error)
		goto out_put;

	FUNC0(inode)->fd = fd;
	FUNC0(inode)->mode = FMODE_READ | FMODE_WRITE;
	FUNC4(dentry, inode);
	return 0;

 out_put:
	FUNC8(inode);
 out:
	return error;
}