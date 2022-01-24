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
typedef  int umode_t ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_data; } ;
struct f2fs_dir_entry {int /*<<< orphan*/  name_len; int /*<<< orphan*/  ino; } ;
struct f2fs_dentry_ptr {unsigned long max; int /*<<< orphan*/ * filename; struct f2fs_dir_entry* dentry; int /*<<< orphan*/  bitmap; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int S_SHIFT ; 
 int FUNC1 (struct inode*,struct qstr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct f2fs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, void *inline_dentry)
{
	struct f2fs_dentry_ptr d;
	unsigned long bit_pos = 0;
	int err = 0;

	FUNC7(dir, &d, inline_dentry);

	while (bit_pos < d.max) {
		struct f2fs_dir_entry *de;
		struct qstr new_name;
		nid_t ino;
		umode_t fake_mode;

		if (!FUNC8(bit_pos, d.bitmap)) {
			bit_pos++;
			continue;
		}

		de = &d.dentry[bit_pos];

		if (FUNC10(!de->name_len)) {
			bit_pos++;
			continue;
		}

		new_name.name = d.filename[bit_pos];
		new_name.len = FUNC5(de->name_len);

		ino = FUNC6(de->ino);
		fake_mode = FUNC2(de) << S_SHIFT;

		err = FUNC1(dir, &new_name, NULL, NULL,
							ino, fake_mode);
		if (err)
			goto punch_dentry_pages;

		bit_pos += FUNC0(FUNC5(de->name_len));
	}
	return 0;
punch_dentry_pages:
	FUNC9(&dir->i_data, 0);
	FUNC4(dir, 0, false);
	FUNC3(dir);
	return err;
}