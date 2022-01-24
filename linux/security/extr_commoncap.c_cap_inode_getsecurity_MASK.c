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
typedef  scalar_t__ uid_t ;
struct vfs_ns_cap_data {int /*<<< orphan*/  data; void* magic_etc; void* rootid; } ;
struct vfs_cap_data {void* magic_etc; int /*<<< orphan*/  data; } ;
struct user_namespace {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int __le32 ;
struct TYPE_2__ {struct user_namespace* s_user_ns; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int VFS_CAP_FLAGS_EFFECTIVE ; 
 int VFS_CAP_REVISION_2 ; 
 int VFS_CAP_U32 ; 
 int /*<<< orphan*/  XATTR_NAME_CAPS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t,struct vfs_cap_data*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,struct vfs_cap_data*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct user_namespace*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 scalar_t__ FUNC14 (struct dentry*,int /*<<< orphan*/ ,char**,int,int /*<<< orphan*/ ) ; 

int FUNC15(struct inode *inode, const char *name, void **buffer,
			  bool alloc)
{
	int size, ret;
	kuid_t kroot;
	uid_t root, mappedroot;
	char *tmpbuf = NULL;
	struct vfs_cap_data *cap;
	struct vfs_ns_cap_data *nscap;
	struct dentry *dentry;
	struct user_namespace *fs_ns;

	if (FUNC13(name, "capability") != 0)
		return -EOPNOTSUPP;

	dentry = FUNC2(inode);
	if (!dentry)
		return -EINVAL;

	size = sizeof(struct vfs_ns_cap_data);
	ret = (int) FUNC14(dentry, XATTR_NAME_CAPS,
				 &tmpbuf, size, GFP_NOFS);
	FUNC3(dentry);

	if (ret < 0)
		return ret;

	fs_ns = inode->i_sb->s_user_ns;
	cap = (struct vfs_cap_data *) tmpbuf;
	if (FUNC5((size_t) ret, cap)) {
		/* If this is sizeof(vfs_cap_data) then we're ok with the
		 * on-disk value, so return that.  */
		if (alloc)
			*buffer = tmpbuf;
		else
			FUNC7(tmpbuf);
		return ret;
	} else if (!FUNC6((size_t) ret, cap)) {
		FUNC7(tmpbuf);
		return -EINVAL;
	}

	nscap = (struct vfs_ns_cap_data *) tmpbuf;
	root = FUNC9(nscap->rootid);
	kroot = FUNC10(fs_ns, root);

	/* If the root kuid maps to a valid uid in current ns, then return
	 * this as a nscap. */
	mappedroot = FUNC4(FUNC1(), kroot);
	if (mappedroot != (uid_t)-1 && mappedroot != (uid_t)0) {
		if (alloc) {
			*buffer = tmpbuf;
			nscap->rootid = FUNC0(mappedroot);
		} else
			FUNC7(tmpbuf);
		return size;
	}

	if (!FUNC12(kroot)) {
		FUNC7(tmpbuf);
		return -EOPNOTSUPP;
	}

	/* This comes from a parent namespace.  Return as a v2 capability */
	size = sizeof(struct vfs_cap_data);
	if (alloc) {
		*buffer = FUNC8(size, GFP_ATOMIC);
		if (*buffer) {
			struct vfs_cap_data *cap = *buffer;
			__le32 nsmagic, magic;
			magic = VFS_CAP_REVISION_2;
			nsmagic = FUNC9(nscap->magic_etc);
			if (nsmagic & VFS_CAP_FLAGS_EFFECTIVE)
				magic |= VFS_CAP_FLAGS_EFFECTIVE;
			FUNC11(&cap->data, &nscap->data, sizeof(__le32) * 2 * VFS_CAP_U32);
			cap->magic_etc = FUNC0(magic);
		} else {
			size = -ENOMEM;
		}
	}
	FUNC7(tmpbuf);
	return size;
}