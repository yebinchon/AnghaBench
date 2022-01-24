#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_4__* dentry; TYPE_2__* mnt; } ;
struct TYPE_7__ {int nfs_export; int index; scalar_t__ upperdir; } ;
struct ovl_fs {scalar_t__ xino_bits; TYPE_3__ config; } ;
struct TYPE_8__ {int /*<<< orphan*/  d_sb; } ;
struct TYPE_6__ {TYPE_1__* mnt_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_stack_depth; } ;

/* Variables and functions */
 int FILEID_INO32_GEN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct path*,struct ovl_fs*,char const*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int FUNC4 (char const*,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *name, struct path *path,
			 struct ovl_fs *ofs, int *stack_depth, bool *remote)
{
	int fh_type;
	int err;

	err = FUNC4(name, path);
	if (err)
		goto out;

	err = FUNC2(path, ofs, name);
	if (err)
		goto out_put;

	*stack_depth = FUNC0(*stack_depth, path->mnt->mnt_sb->s_stack_depth);

	if (FUNC3(path->dentry))
		*remote = true;

	/*
	 * The inodes index feature and NFS export need to encode and decode
	 * file handles, so they require that all layers support them.
	 */
	fh_type = FUNC1(path->dentry->d_sb);
	if ((ofs->config.nfs_export ||
	     (ofs->config.index && ofs->config.upperdir)) && !fh_type) {
		ofs->config.index = false;
		ofs->config.nfs_export = false;
		FUNC6("overlayfs: fs on '%s' does not support file handles, falling back to index=off,nfs_export=off.\n",
			name);
	}

	/* Check if lower fs has 32bit inode numbers */
	if (fh_type != FILEID_INO32_GEN)
		ofs->xino_bits = 0;

	return 0;

out_put:
	FUNC5(path);
out:
	return err;
}