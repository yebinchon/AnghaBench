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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTBLK ; 
 struct block_device* FUNC0 (int) ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct block_device* FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 

struct block_device *FUNC7(const char *pathname)
{
	struct block_device *bdev;
	struct inode *inode;
	struct path path;
	int error;

	if (!pathname || !*pathname)
		return FUNC0(-EINVAL);

	error = FUNC4(pathname, LOOKUP_FOLLOW, &path);
	if (error)
		return FUNC0(error);

	inode = FUNC3(path.dentry);
	error = -ENOTBLK;
	if (!FUNC1(inode->i_mode))
		goto fail;
	error = -EACCES;
	if (!FUNC5(&path))
		goto fail;
	error = -ENOMEM;
	bdev = FUNC2(inode);
	if (!bdev)
		goto fail;
out:
	FUNC6(&path);
	return bdev;
fail:
	bdev = FUNC0(error);
	goto out;
}