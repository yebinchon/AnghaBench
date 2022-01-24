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
typedef  scalar_t__ u16 ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct hfsplus_unistr {int dummy; } ;
struct hfsplus_attr_key {int /*<<< orphan*/  cnid; } ;
struct hfs_find_data {TYPE_3__* key; int /*<<< orphan*/  keyoffset; int /*<<< orphan*/  bnode; TYPE_1__* tree; } ;
struct dentry {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  key_len ;
struct TYPE_8__ {int /*<<< orphan*/  attr_tree; } ;
struct TYPE_6__ {int /*<<< orphan*/  key_name; } ;
struct TYPE_7__ {TYPE_2__ attr; } ;
struct TYPE_5__ {scalar_t__ max_key_len; } ;

/* Variables and functions */
 int EIO ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HFSPLUS_ATTR_MAX_STRLEN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int NLS_MAX_CHARSET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ XATTR_MAC_OSX_PREFIX_LEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 struct inode* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct hfsplus_attr_key*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct hfs_find_data*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hfs_find_data*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct hfs_find_data*) ; 
 int FUNC14 (struct dentry*,char*,size_t) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct hfsplus_unistr const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 

ssize_t FUNC20(struct dentry *dentry, char *buffer, size_t size)
{
	ssize_t err;
	ssize_t res = 0;
	struct inode *inode = FUNC7(dentry);
	struct hfs_find_data fd;
	u16 key_len = 0;
	struct hfsplus_attr_key attr_key;
	char *strbuf;
	int xattr_name_len;

	if ((!FUNC3(inode->i_mode) &&
			!FUNC2(inode->i_mode)) ||
				FUNC0(inode))
		return -EOPNOTSUPP;

	res = FUNC14(dentry, buffer, size);
	if (res < 0)
		return res;
	else if (!FUNC1(inode->i_sb)->attr_tree)
		return (res == 0) ? -EOPNOTSUPP : res;

	err = FUNC12(FUNC1(inode->i_sb)->attr_tree, &fd);
	if (err) {
		FUNC19("can't init xattr find struct\n");
		return err;
	}

	strbuf = FUNC17(NLS_MAX_CHARSET_SIZE * HFSPLUS_ATTR_MAX_STRLEN +
			XATTR_MAC_OSX_PREFIX_LEN + 1, GFP_KERNEL);
	if (!strbuf) {
		res = -ENOMEM;
		goto out;
	}

	err = FUNC13(inode->i_sb, inode->i_ino, NULL, &fd);
	if (err) {
		if (err == -ENOENT) {
			if (res == 0)
				res = -ENODATA;
			goto end_listxattr;
		} else {
			res = err;
			goto end_listxattr;
		}
	}

	for (;;) {
		key_len = FUNC9(fd.bnode, fd.keyoffset);
		if (key_len == 0 || key_len > fd.tree->max_key_len) {
			FUNC19("invalid xattr key length: %d\n", key_len);
			res = -EIO;
			goto end_listxattr;
		}

		FUNC8(fd.bnode, &attr_key,
				fd.keyoffset, key_len + sizeof(key_len));

		if (FUNC4(attr_key.cnid) != inode->i_ino)
			goto end_listxattr;

		xattr_name_len = NLS_MAX_CHARSET_SIZE * HFSPLUS_ATTR_MAX_STRLEN;
		if (FUNC15(inode->i_sb,
			(const struct hfsplus_unistr *)&fd.key->attr.key_name,
					strbuf, &xattr_name_len)) {
			FUNC19("unicode conversion failed\n");
			res = -EIO;
			goto end_listxattr;
		}

		if (!buffer || !size) {
			if (FUNC5(strbuf))
				res += FUNC18(strbuf, xattr_name_len);
		} else if (FUNC5(strbuf)) {
			if (size < (res + FUNC18(strbuf, xattr_name_len))) {
				res = -ERANGE;
				goto end_listxattr;
			} else
				res += FUNC6(buffer + res,
						strbuf, xattr_name_len);
		}

		if (FUNC10(&fd, 1))
			goto end_listxattr;
	}

end_listxattr:
	FUNC16(strbuf);
out:
	FUNC11(&fd);
	return res;
}