#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_3__* dentry; TYPE_2__* mnt; } ;
struct TYPE_11__ {int /*<<< orphan*/  fs; } ;
struct TYPE_10__ {TYPE_1__* d_sb; } ;
struct TYPE_9__ {int mnt_flags; } ;
struct TYPE_8__ {scalar_t__ s_magic; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (char*) ; 
 int MNT_INTERNAL ; 
 int PATH_CHROOT_REL ; 
 int PATH_DELEGATE_DELETED ; 
 int PATH_IS_DIR ; 
 int PATH_MEDIATE_DELETED ; 
 scalar_t__ PROC_SUPER_MAGIC ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (struct path const*,struct path*,char*,int) ; 
 int aa_g_path_max ; 
 TYPE_7__* current ; 
 char* FUNC3 (struct path const*,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 char* FUNC6 (TYPE_3__*,char*,int) ; 
 char* FUNC7 (TYPE_3__*,char*,int) ; 
 int FUNC8 (struct path const*,char*,char**,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 int FUNC12 (char**,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 

__attribute__((used)) static int FUNC15(const struct path *path, char *buf, char **name,
			    int flags, const char *disconnected)
{
	char *res;
	int error = 0;
	int connected = 1;
	int isdir = (flags & PATH_IS_DIR) ? 1 : 0;
	int buflen = aa_g_path_max - isdir;

	if (path->mnt->mnt_flags & MNT_INTERNAL) {
		/* it's not mounted anywhere */
		res = FUNC6(path->dentry, buf, buflen);
		*name = res;
		if (FUNC0(res)) {
			*name = buf;
			return FUNC1(res);
		}
		if (path->dentry->d_sb->s_magic == PROC_SUPER_MAGIC &&
		    FUNC14(*name, "/sys/", 5) == 0) {
			/* TODO: convert over to using a per namespace
			 * control instead of hard coded /proc
			 */
			error = FUNC12(name, *name - buf, "/proc", 5);
			goto out;
		} else
			error = FUNC8(path, buf, name, flags,
					   disconnected);
		goto out;
	}

	/* resolve paths relative to chroot?*/
	if (flags & PATH_CHROOT_REL) {
		struct path root;
		FUNC9(current->fs, &root);
		res = FUNC2(path, &root, buf, buflen);
		FUNC11(&root);
	} else {
		res = FUNC3(path, buf, buflen);
		if (!FUNC10(path->mnt))
			connected = 0;
	}

	/* handle error conditions - and still allow a partial path to
	 * be returned.
	 */
	if (!res || FUNC0(res)) {
		if (FUNC1(res) == -ENAMETOOLONG) {
			error = -ENAMETOOLONG;
			*name = buf;
			goto out;
		}
		connected = 0;
		res = FUNC7(path->dentry, buf, buflen);
		if (FUNC0(res)) {
			error = FUNC1(res);
			*name = buf;
			goto out;
		};
	} else if (!FUNC10(path->mnt))
		connected = 0;

	*name = res;

	if (!connected)
		error = FUNC8(path, buf, name, flags, disconnected);

	/* Handle two cases:
	 * 1. A deleted dentry && profile is not allowing mediation of deleted
	 * 2. On some filesystems, newly allocated dentries appear to the
	 *    security_path hooks as a deleted dentry except without an inode
	 *    allocated.
	 */
	if (FUNC5(path->dentry) && FUNC4(path->dentry) &&
	    !(flags & (PATH_MEDIATE_DELETED | PATH_DELEGATE_DELETED))) {
			error = -ENOENT;
			goto out;
	}

out:
	/*
	 * Append "/" to the pathname.  The root directory is a special
	 * case; it already ends in slash.
	 */
	if (!error && isdir && ((*name)[1] != '\0' || (*name)[0] != '/'))
		FUNC13(&buf[aa_g_path_max - 2], "/");

	return error;
}