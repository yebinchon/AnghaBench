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
struct ovl_cattr {int mode; int /*<<< orphan*/  link; int /*<<< orphan*/  rdev; scalar_t__ hardlink; } ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct inode*,struct dentry*,int) ; 
 int FUNC5 (scalar_t__,struct inode*,struct dentry*) ; 
 int FUNC6 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct dentry**,int) ; 

struct dentry *FUNC9(struct inode *dir, struct dentry *newdentry,
			       struct ovl_cattr *attr)
{
	int err;

	if (FUNC1(newdentry))
		return newdentry;

	err = -ESTALE;
	if (newdentry->d_inode)
		goto out;

	if (attr->hardlink) {
		err = FUNC5(attr->hardlink, dir, newdentry);
	} else {
		switch (attr->mode & S_IFMT) {
		case S_IFREG:
			err = FUNC4(dir, newdentry, attr->mode);
			break;

		case S_IFDIR:
			/* mkdir is special... */
			err =  FUNC8(dir, &newdentry, attr->mode);
			break;

		case S_IFCHR:
		case S_IFBLK:
		case S_IFIFO:
		case S_IFSOCK:
			err = FUNC6(dir, newdentry, attr->mode,
					   attr->rdev);
			break;

		case S_IFLNK:
			err = FUNC7(dir, newdentry, attr->link);
			break;

		default:
			err = -EPERM;
		}
	}
	if (!err && FUNC2(!newdentry->d_inode)) {
		/*
		 * Not quite sure if non-instantiated dentry is legal or not.
		 * VFS doesn't seem to care so check and warn here.
		 */
		err = -EIO;
	}
out:
	if (err) {
		FUNC3(newdentry);
		return FUNC0(err);
	}
	return newdentry;
}