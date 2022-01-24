#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct dentry* dentry; int /*<<< orphan*/ * mnt; } ;
struct nameidata {unsigned int flags; scalar_t__ dfd; TYPE_3__ path; struct inode* inode; void* seq; void* m_seq; TYPE_3__ root; void* root_seq; scalar_t__ depth; int /*<<< orphan*/  last_type; TYPE_1__* name; } ;
struct inode {int dummy; } ;
struct fs_struct {TYPE_3__ pwd; int /*<<< orphan*/  seq; } ;
struct fd {TYPE_2__* file; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_seq; } ;
struct TYPE_9__ {struct fs_struct* fs; } ;
struct TYPE_7__ {TYPE_3__ f_path; } ;
struct TYPE_6__ {char* name; } ;

/* Variables and functions */
 scalar_t__ AT_FDCWD ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  ENOTDIR ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAST_ROOT ; 
 unsigned int LOOKUP_JUMPED ; 
 unsigned int LOOKUP_PARENT ; 
 unsigned int LOOKUP_RCU ; 
 unsigned int LOOKUP_ROOT ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct fd FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct fd) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_struct*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct nameidata*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static const char *FUNC15(struct nameidata *nd, unsigned flags)
{
	const char *s = nd->name->name;

	if (!*s)
		flags &= ~LOOKUP_RCU;
	if (flags & LOOKUP_RCU)
		FUNC9();

	nd->last_type = LAST_ROOT; /* if there are only slashes... */
	nd->flags = flags | LOOKUP_JUMPED | LOOKUP_PARENT;
	nd->depth = 0;
	if (flags & LOOKUP_ROOT) {
		struct dentry *root = nd->root.dentry;
		struct inode *inode = root->d_inode;
		if (*s && FUNC14(!FUNC2(root)))
			return FUNC0(-ENOTDIR);
		nd->path = nd->root;
		nd->inode = inode;
		if (flags & LOOKUP_RCU) {
			nd->seq = FUNC1(&nd->path.dentry->d_seq);
			nd->root_seq = nd->seq;
			nd->m_seq = FUNC10(&mount_lock);
		} else {
			FUNC8(&nd->path);
		}
		return s;
	}

	nd->root.mnt = NULL;
	nd->path.mnt = NULL;
	nd->path.dentry = NULL;

	nd->m_seq = FUNC10(&mount_lock);
	if (*s == '/') {
		FUNC13(nd);
		if (FUNC6(!FUNC7(nd)))
			return s;
		return FUNC0(-ECHILD);
	} else if (nd->dfd == AT_FDCWD) {
		if (flags & LOOKUP_RCU) {
			struct fs_struct *fs = current->fs;
			unsigned seq;

			do {
				seq = FUNC11(&fs->seq);
				nd->path = fs->pwd;
				nd->inode = nd->path.dentry->d_inode;
				nd->seq = FUNC1(&nd->path.dentry->d_seq);
			} while (FUNC12(&fs->seq, seq));
		} else {
			FUNC5(current->fs, &nd->path);
			nd->inode = nd->path.dentry->d_inode;
		}
		return s;
	} else {
		/* Caller must check execute permissions on the starting path component */
		struct fd f = FUNC3(nd->dfd);
		struct dentry *dentry;

		if (!f.file)
			return FUNC0(-EBADF);

		dentry = f.file->f_path.dentry;

		if (*s && FUNC14(!FUNC2(dentry))) {
			FUNC4(f);
			return FUNC0(-ENOTDIR);
		}

		nd->path = f.file->f_path;
		if (flags & LOOKUP_RCU) {
			nd->inode = nd->path.dentry->d_inode;
			nd->seq = FUNC11(&nd->path.dentry->d_seq);
		} else {
			FUNC8(&nd->path);
			nd->inode = nd->path.dentry->d_inode;
		}
		FUNC4(f);
		return s;
	}
}