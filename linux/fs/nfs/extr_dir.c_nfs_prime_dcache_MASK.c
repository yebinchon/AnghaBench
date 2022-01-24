#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct qstr {int len; char* name; int /*<<< orphan*/  hash; } ;
struct nfs_entry {int /*<<< orphan*/  label; TYPE_1__* fattr; TYPE_3__* fh; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_8__ {int /*<<< orphan*/  fsid; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int valid; int /*<<< orphan*/  fsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int NFS_ATTR_FATTR_FILEID ; 
 int NFS_ATTR_FATTR_FSID ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct qstr FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct dentry*,struct qstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 struct dentry* FUNC8 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 struct dentry* FUNC10 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,char*,int) ; 
 struct inode* FUNC13 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct inode*,TYPE_1__*) ; 
 scalar_t__ FUNC16 (struct dentry*,struct nfs_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char*,int,char) ; 
 int FUNC21 (char*,int) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static
void FUNC22(struct dentry *parent, struct nfs_entry *entry)
{
	struct qstr filename = FUNC3(entry->name, entry->len);
	FUNC0(wq);
	struct dentry *dentry;
	struct dentry *alias;
	struct inode *dir = FUNC6(parent);
	struct inode *inode;
	int status;

	if (!(entry->fattr->valid & NFS_ATTR_FATTR_FILEID))
		return;
	if (!(entry->fattr->valid & NFS_ATTR_FATTR_FSID))
		return;
	if (filename.len == 0)
		return;
	/* Validate that the name doesn't contain any illegal '\0' */
	if (FUNC21(filename.name, filename.len) != filename.len)
		return;
	/* ...or '/' */
	if (FUNC20(filename.name, filename.len, '/'))
		return;
	if (filename.name[0] == '.') {
		if (filename.len == 1)
			return;
		if (filename.len == 2 && filename.name[1] == '.')
			return;
	}
	filename.hash = FUNC12(parent, filename.name, filename.len);

	dentry = FUNC8(parent, &filename);
again:
	if (!dentry) {
		dentry = FUNC4(parent, &filename, &wq);
		if (FUNC1(dentry))
			return;
	}
	if (!FUNC5(dentry)) {
		/* Is there a mountpoint here? If so, just exit */
		if (!FUNC14(&FUNC2(dentry->d_sb)->fsid,
					&entry->fattr->fsid))
			goto out;
		if (FUNC16(dentry, entry)) {
			if (!entry->fh->size)
				goto out;
			FUNC18(dentry, FUNC17(dir));
			status = FUNC15(FUNC6(dentry), entry->fattr);
			if (!status)
				FUNC19(FUNC6(dentry), entry->fattr, entry->label);
			goto out;
		} else {
			FUNC7(dentry);
			FUNC11(dentry);
			dentry = NULL;
			goto again;
		}
	}
	if (!entry->fh->size) {
		FUNC9(dentry);
		goto out;
	}

	inode = FUNC13(dentry->d_sb, entry->fh, entry->fattr, entry->label);
	alias = FUNC10(inode, dentry);
	FUNC9(dentry);
	if (alias) {
		if (FUNC1(alias))
			goto out;
		FUNC11(dentry);
		dentry = alias;
	}
	FUNC18(dentry, FUNC17(dir));
out:
	FUNC11(dentry);
}