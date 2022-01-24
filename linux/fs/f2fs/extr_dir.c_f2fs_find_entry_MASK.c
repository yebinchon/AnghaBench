#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_encoding; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct page* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct f2fs_dir_entry* FUNC3 (struct inode*,struct fscrypt_name*,struct page**) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscrypt_name*) ; 
 int FUNC6 (struct inode*,struct qstr const*,int,struct fscrypt_name*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct qstr const*) ; 

struct f2fs_dir_entry *FUNC8(struct inode *dir,
			const struct qstr *child, struct page **res_page)
{
	struct f2fs_dir_entry *de = NULL;
	struct fscrypt_name fname;
	int err;

#ifdef CONFIG_UNICODE
	if (f2fs_has_strict_mode(F2FS_I_SB(dir)) && IS_CASEFOLDED(dir) &&
			utf8_validate(F2FS_I_SB(dir)->s_encoding, child)) {
		*res_page = ERR_PTR(-EINVAL);
		return NULL;
	}
#endif

	err = FUNC6(dir, child, 1, &fname);
	if (err) {
		if (err == -ENOENT)
			*res_page = NULL;
		else
			*res_page = FUNC0(err);
		return NULL;
	}

	de = FUNC3(dir, &fname, res_page);

	FUNC5(&fname);
	return de;
}