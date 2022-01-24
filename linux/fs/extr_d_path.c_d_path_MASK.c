#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_3__* dentry; TYPE_1__* mnt; } ;
struct TYPE_9__ {int /*<<< orphan*/  fs; } ;
struct TYPE_8__ {TYPE_2__* d_op; } ;
struct TYPE_7__ {char* (* d_dname ) (TYPE_3__*,char*,int) ;} ;
struct TYPE_6__ {TYPE_3__* mnt_root; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct path*) ; 
 int FUNC3 (struct path const*,struct path*,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (TYPE_3__*,char*,int) ; 

char *FUNC7(const struct path *path, char *buf, int buflen)
{
	char *res = buf + buflen;
	struct path root;
	int error;

	/*
	 * We have various synthetic filesystems that never get mounted.  On
	 * these filesystems dentries are never used for lookup purposes, and
	 * thus don't need to be hashed.  They also don't need a name until a
	 * user wants to identify the object in /proc/pid/fd/.  The little hack
	 * below allows us to generate a name for these objects on demand:
	 *
	 * Some pseudo inodes are mountable.  When they are mounted
	 * path->dentry == path->mnt->mnt_root.  In that case don't call d_dname
	 * and instead have d_path return the mounted path.
	 */
	if (path->dentry->d_op && path->dentry->d_op->d_dname &&
	    (!FUNC1(path->dentry) || path->dentry != path->mnt->mnt_root))
		return path->dentry->d_op->d_dname(path->dentry, buf, buflen);

	FUNC4();
	FUNC2(current->fs, &root);
	error = FUNC3(path, &root, &res, &buflen);
	FUNC5();

	if (error < 0)
		res = FUNC0(error);
	return res;
}