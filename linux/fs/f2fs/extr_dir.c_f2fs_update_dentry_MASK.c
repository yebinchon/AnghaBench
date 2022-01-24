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
typedef  int /*<<< orphan*/  umode_t ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct f2fs_dir_entry {scalar_t__ name_len; int /*<<< orphan*/  ino; int /*<<< orphan*/  hash_code; } ;
struct f2fs_dentry_ptr {scalar_t__ bitmap; int /*<<< orphan*/ * filename; struct f2fs_dir_entry* dentry; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  int /*<<< orphan*/  f2fs_hash_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_dir_entry*,int /*<<< orphan*/ ) ; 

void FUNC6(nid_t ino, umode_t mode, struct f2fs_dentry_ptr *d,
				const struct qstr *name, f2fs_hash_t name_hash,
				unsigned int bit_pos)
{
	struct f2fs_dir_entry *de;
	int slots = FUNC0(name->len);
	int i;

	de = &d->dentry[bit_pos];
	de->hash_code = name_hash;
	de->name_len = FUNC2(name->len);
	FUNC4(d->filename[bit_pos], name->name, name->len);
	de->ino = FUNC3(ino);
	FUNC5(de, mode);
	for (i = 0; i < slots; i++) {
		FUNC1(bit_pos + i, (void *)d->bitmap);
		/* avoid wrong garbage data for readdir */
		if (i)
			(de + i)->name_len = 0;
	}
}